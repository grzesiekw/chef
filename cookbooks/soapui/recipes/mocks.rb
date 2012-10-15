template "/etc/init.d/soapui-mocks" do
  source "init.erb"
  mode "0755"
  owner "root"
  group "root"

  variables({
                :soapui_home => node['soapui']['home'],
                :mock_home => node['soapui']['mocks']['home'],
                :mock_files => node['soapui']['mocks']['files']
            })
end

service "soapui-mocks" do
  action [ :enable, :start ]
end