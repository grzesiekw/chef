default['kestrel']['home'] = "/opt/kestrel"
default['kestrel']['user'] = "kestrel"

default['kestrel']['version'] = "2.4.1"
default['kestrel']['url'] = "http://10.0.2.2/resources/kestrel-#{default['kestrel']['version']}.zip"

default['kestrel']['listen_address'] = "0.0.0.0"
default['kestrel']['memcache_listen_port'] = 22133
default['kestrel']['text_listen_port'] = 2222
default['kestrel']['thrift_listen_port'] = 2229
default['kestrel']['queue_path'] = "/var/spool/kestrel"
default['kestrel']['log_path'] = "/var/log/kestrel"
default['kestrel']['log_file'] = "#{default['kestrel']['log_path']}/kestrel.log"