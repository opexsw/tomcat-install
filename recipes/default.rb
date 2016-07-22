#
# Cookbook Name:: tomcat-install
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default['tomcat']['base_version'] = node['tomcat-install']['base_version']
node.default['tomcat']['port'] = node['tomcat-install']['port']
node.default['tomcat']['shutdown_port'] = node['tomcat-install']['shutdown_port']
node.default['tomcat']['ssl_port'] = node['tomcat-install']['ssl_port']
node.default['tomcat']['ssl_max_threads'] = node['tomcat-install']['ssl_max_threads ']
node.default['tomcat']['deploy_manager_apps'] = node['tomcat-install']['deploy_manager_apps']
node.default['tomcat']['use_security_manager'] = node['tomcat-install']['use_security_manager']
node.default['tomcat']['tomcat_auth'] = node['tomcat-install']['tomcat_auth'] 
node.default['tomcat']['run_base_instance'] = node['tomcat-install']['run_base_instance'] 

case node['platform_family']
  when 'debian'
    apt_update 'apt update' do
      action :update
    end

    if node['tomcat-install']['base_version'] == 6
      node.default["java"]["java_home"] = "/usr/lib/jvm/jdk-oracle.1.6.0_33"
     elsif node['tomcat-install']['base_version'] == 7
      node.default["java"]["java_home"] = "/usr/lib/jvm/java-7-oracle"
    end

end

include_recipe 'tomcat::default'	