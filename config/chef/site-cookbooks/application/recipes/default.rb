### The following replaces omnibus chef by system-installed one

dpkg_package "chef" do
  action :remove
end

package "rubygems"
gem_package "chef"

### Until here
# The above is not very well tested yet

include_recipe 'flatstack::base'
include_recipe 'flatstack::ruby'
include_recipe 'flatstack::rails'
include_recipe 'flatstack::postgresql'
include_recipe 'flatstack::rails_application'
