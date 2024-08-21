# configure nginx to accept more request

exec {'fix--for-nginx':
 command => 'sed -i \'s/ULIMIT="-n 4096"/ULIMIT="-n 4096"/\' /etc/default/nginx && sudo service nginx restart',
  path   => ['/bin/', '/usr/bin/', '/usr/sbin/'],
}
