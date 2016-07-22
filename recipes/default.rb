#
# Cookbook Name:: tomcat-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['tomcat']['base_version'] = node['tomcat-install']['port']
node.default['tomcat']['port'] = node['tomcat-install']['port']

case node['platform_family']
  when 'debian'
    apt_update 'apt u == 6pdate' do
      action :update
    end

    if ['tomcat-install']['base_version'] == 6
      node.default["java"]["java_home"] = "/usr/lib/jvm/jdk-oracle.1.6.0_33"
    end
end

include_recipe 'tomcat::default'	