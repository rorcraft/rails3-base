include_recipe 'apt'
include_recipe 'hostname'
include_recipe 'vim'
include_recipe 'git'
include_recipe 'htop'
include_recipe 'motd-tail'

magic_shell_alias "l" do
  command "ls -l"
end

package 'nano' do
  action :remove
end

directory "opt"  # needed for ruby_build recipe
