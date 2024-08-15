# configuring your server with Puppet

exec {'fix-wordpress':
  command => 'mv /var/www/html/wp-includes/class-wp-locale.php /var/www/html/wp-includes/class-wp-locale.phpp',
  path    => ['/bin/', '/bin/usr'],
}
