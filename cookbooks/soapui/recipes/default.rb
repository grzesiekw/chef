include_recipe 'ark'

ark 'soapui' do
  url node['soapui']['url']
  home_dir node['soapui']['home']
  version node['soapui']['version']
  checksum node['soapui']['checksum']
  extension 'zip'
  append_env_path true
  action :install
end