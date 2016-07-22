default['tomcat-install']['base_version'] = 7
default['tomcat-install']['port'] = 8080
default['tomcat-install']['shutdown_port'] = 8005
default['tomcat-install']['ssl_port'] = 8443
default['tomcat-install']['ssl_max_threads'] = 150
default['tomcat-install']['deploy_manager_apps'] = true
default['tomcat-install']['use_security_manager'] = false
default['tomcat-install']['tomcat_auth'] = true
default['tomcat-install']['run_base_instance'] = true

default['tomcat']['base_instance'] = "tomcat#{node['tomcat-install']['base_version']}"
default['tomcat']['packages'] = ["tomcat#{node['tomcat-install']['base_version']}"]
default['tomcat']['deploy_manager_packages'] = ["tomcat#{node['tomcat-install']['base_version']}-admin"]


case node['platform_family']
when 'debian'	
  default['tomcat']['user'] = "tomcat#{node['tomcat-install']['base_version']}" 
  default['tomcat']['group'] = "tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['home'] = "/usr/share/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['base'] = "/var/lib/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['config_dir'] = "/etc/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['log_dir'] = "/var/log/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['tmp_dir'] = "/tmp/tomcat#{node['tomcat-install']['base_version']}-tmp"
  default['tomcat']['work_dir'] = "/var/cache/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['context_dir'] = "#{node['tomcat-install']['config_dir']}/Catalina/localhost"
  default['tomcat']['webapp_dir'] = "/var/lib/tomcat#{node['tomcat-install']['base_version']}/webapps"
  default['tomcat']['keytool'] = 'keytool'
  default['tomcat']['lib_dir'] = "#{node['tomcat-install']['home']}/lib"
  default['tomcat']['endorsed_dir'] = "#{node['tomcat-install']['lib_dir']}/endorsed"
else
  default['tomcat']['user'] = "tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['group'] = "tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['home'] = "/usr/share/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['base'] = "/var/lib/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['config_dir'] = "/etc/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['log_dir'] = "/var/log/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['tmp_dir'] = "/tmp/tomcat#{node['tomcat-install']['base_version']}-tmp"
  default['tomcat']['work_dir'] = "/var/cache/tomcat#{node['tomcat-install']['base_version']}"
  default['tomcat']['context_dir'] = "#{node['tomcat-install']['config_dir']}/Catalina/localhost"
  default['tomcat']['webapp_dir'] = "/var/lib/tomcat#{node['tomcat-install']['base_version']}/webapps"
  default['tomcat']['keytool'] = 'keytool'
  default['tomcat']['lib_dir'] = "#{node['tomcat-install']['home']}/lib"
  default['tomcat']['endorsed_dir'] = "#{node['tomcat-install']['lib_dir']}/endorsed"
end