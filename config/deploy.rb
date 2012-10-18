require "bundler/capistrano"

server "176.58.113.80", :web, :app, :db, primary: true

set :user, "deployer"
set :application, "rails3-base"
set :deploy_to, "/var/www/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:fs/#{application}.git"
set :branch, "develop"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

set :default_environment, {
  'PATH' => '/opt/rbenv/shims:/opt/rbenv/bin:$PATH'
}
