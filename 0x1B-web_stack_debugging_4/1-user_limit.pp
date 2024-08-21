# Fix fd limit on holberton user

exec {'change-os-configuration-for-holberton-user':
  command => 'sudo sed -i "s/5/1024/" /etc/security/limits.conf && sudo sed -i "s/4/2048/" /etc/security/limits.conf',
  path    => ['/bin/', '/usr/bin/', '/usr/sbin/'],
}
