# This should be included before any other actions done
include_recipe 'flatstack::base'


##############################
# The following stuff to replace Omnibus Chef by Chef installed from
# gems might better be moved to a separate recipe
#
# You'll get the following error on the first run if you are using Omnibus Chef:
#   'cannot load such file -- enc/trans/single_byte'
#
# This is ok, just rerun chef client
#

apt_update = resources("execute[apt-get update]")
apt_update.run_action(:run)

package_rubygems = package "rubygems" do
  action :nothing
end
package_rubygems.run_action(:install)

gem_package_chef = gem_package "chef" do
  action :nothing
end
gem_package_chef.run_action(:install)

package_chef = dpkg_package "chef" do
  action :nothing
end
package_chef.run_action(:remove)

Gem.clear_paths

### Until here


include_recipe 'flatstack::ruby'
include_recipe 'flatstack::rails'
include_recipe 'flatstack::postgresql'
include_recipe 'flatstack::rails_application'
