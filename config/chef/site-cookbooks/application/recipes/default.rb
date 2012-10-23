### The following replaces omnibus chef by system-installed one

package_chef = dpkg_package "chef" do
  action :nothing
end
package_chef.run_action(:remove)

package_rubygems = package "rubygems" do
  action :nothing
end

package_rubygems.run_action(:install)

gem_package_chef = gem_package "chef" do
  action :nothing
end

gem_package_chef.run_action(:install)

Gem.clear_paths

### Until here
# The above is not very well tested yet

include_recipe 'flatstack::base'
include_recipe 'flatstack::ruby'
include_recipe 'flatstack::rails'
include_recipe 'flatstack::postgresql'
include_recipe 'flatstack::rails_application'
