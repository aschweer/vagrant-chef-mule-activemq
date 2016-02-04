#
# Cookbook Name:: mule
# Recipe:: default
#
# Copyright (C) 2014 ShopKeep DevOps
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'mule::_java'

group node['mule']['group'] do
  gid node['mule']['gid']
end

user node['mule']['user'] do
  supports manage_home: true
  shell '/bin/bash'
  home "/home/#{node['mule']['user']}"
  comment 'Mule user'
  uid node['mule']['uid']
  gid node['mule']['gid']
end

archive 'mule' do
  url [node['mule']['package']['base_url'], node['mule']['version'], node['mule']['package']['filename'] % {version: node['mule']['version']}].join('/')
  version node['mule']['version']
  prefix node['mule']['package']['dir_prefix']
  owner node['mule']['user']
  group node['mule']['group']
  extract_action 'unzip_and_strip_dir'
end

[ '/mule', '/mule/versions', "/mule/versions/mule-#{node['mule']['version']}" ].each do |dir|
  directory node['mule']['package']['dir_prefix'] + dir do
    owner node['mule']['user']
    group node['mule']['group']
    mode 0755
  end
end

template '/etc/init.d/mule' do
  source 'mule_init.erb'
  mode 0755
  variables(
    user: node['mule']['user'],
    mule_home: node['mule']['package']['dir_prefix'] + '/mule/versions/current'
    )
end

service 'mule' do
  action [:start, :enable]
end
