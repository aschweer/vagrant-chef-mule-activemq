node.default['java']['install_flavor'] = node['mule']['java']['flavor']
node.default['java']['jdk_version'] = node['mule']['java']['version']

case node['mule']['java']['flavor']
when 'oracle'
  node.default['java']['oracle']['accept_oracle_download_terms'] = true
when 'ibm'
  node.default['java']['ibm']['accept_ibm_download_terms'] = true
end

case node['platform_family']
when 'debian'
  include_recipe 'apt'
when 'redhat'
  include_recipe 'yum'
end

include_recipe 'java'
