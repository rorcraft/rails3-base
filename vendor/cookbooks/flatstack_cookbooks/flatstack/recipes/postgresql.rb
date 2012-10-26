require 'yaml'
::Chef::Recipe.send(:include, Opscode::OpenSSL::Password)

connection_info = { :host => 'localhost', :username => 'postgres' }
database_name = node.postgresql.database.name || node.rails.application.name.gsub(/-/, '_')
database_user = node.postgresql.database.user || database_name

### The following prevents resetting the postgres's user password by postgresql cookbook
passwords = {}
if File.exists?(node.postgresql.password.storage)
  passwords = YAML.load( File.open(node.postgresql.password.storage) )
end

node.set_unless.postgresql.password.postgres = passwords[:postgres]     || secure_password
node.set_unless.postgresql.database.password = passwords[database_user] || secure_password


include_recipe 'postgresql::client'
include_recipe 'postgresql::server'
include_recipe 'database::postgresql'


postgresql_database database_name do
  action :create
  connection connection_info
end

postgresql_database_user database_user do
  action :create
  database_name database_name
  password node.postgresql.database.password
  connection connection_info
end

passwords[:postgres] = node.postgresql.password.postgres
passwords[database_user] = node.postgresql.database.password

file "postgresql_passwords" do
  action :create
  path node.postgresql.password.storage
  content YAML.dump( passwords )
  owner "root"
  mode "0600"
end
