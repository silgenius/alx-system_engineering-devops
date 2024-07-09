# Installs nginx on a server
$server_config = "server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;

    index index.html index.htm index.nginx-debian.html;

    server_name _;

    add_header X-Served-By \"${hostname}\";

    location /redirect_me {
        return 301 https://www.goal.com;
    }

    error_page 404 /404.html;
    location = /404.html {
                root /var/www/html;
                internal;
    }
}
"
exec { 'update server':
command => '/usr/bin/sudo /usr/bin/apt-get update'
}

package { 'nginx':
ensure  => installed,
require => Exec['update server']
}

file { '/etc/nginx/sites-available/default':
ensure  => file,
content => $server_config,
require => Package['nginx'],
notify  => Exec['restart Nginx']
}

exec { 'restart Nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}

file { '/var/www/html/index.nginx-debian.html':
ensure  => present,
content => 'Hello World!'
}

file { '/var/www/html/404.html':
ensure  => present,
content => "Ceci n'est pas une page"
}
