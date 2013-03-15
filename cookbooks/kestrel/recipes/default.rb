include_recipe "ark"
include_recipe "java::oracle"

user node['kestrel']['user']

directory node['kestrel']['queue_path'] do
	group node['kestrel']['user']
	owner node['kestrel']['user']
	mode "0755"
end

directory node['kestrel']['log_path'] do
	group node['kestrel']['user']
	owner node['kestrel']['user']
	mode "0755"
end

ark "kestrel" do
	url node['kestrel']['url']
	home_dir node['kestrel']['home']
	version node['kestrel']['version']
	action :install
end

template "#{node['kestrel']['home']}/config/development.scala" do
	source "development.scala.erb"
	mode "0755"
end

template "/etc/init.d/kestrel" do
	source "init.erb"
	mode "0755"
	owner "root"
	group "root"
end

# start service
service "kestrel" do
	action [:enable, :start]
end