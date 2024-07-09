# configuring your server with Puppet

$file_content="server {
\tlisten 80 default_server;
\tlisten [::]:80 default_server;
\troot /var/www/html;

\t# Add index.php to the list if you are using PHP
\tindex index.html index.htm index.nginx-debian.html;

\tserver_name _;

 \tlocation /redirect_me {
 \t\treturn 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
\t}

\terror_page 404 /404.html;
\tlocation = /404.html {
\t\troot /var/www/html;
\t\tinternal;
\t}

}"


$host = $::hostname
$config_header="http {\n\n\tadd_header X-Served-By \"${host}\";"

exec { 'apt_update':
command => '/usr/bin/sudo /usr/bin/apt-get update'
}

package {'nginx':
  ensure => 'installed',
}

file {'/var/www/html/index.nginx-debian.html':
  ensure  => 'file',
  content => "Hello World!\n",
}

file {'/etc/nginx/sites-available/default':
  ensure  => 'file',
  content => $file_content,
}

file_line {'Include header':
  path => '/etc/nginx/nginx.conf',
  line   => $config_header,
  match  => 'http {',
}

file { '/var/www/html/404.html':
  ensure  => present,
  content => "Ceci n'est pas une page\n",
}

service {'nginx':
  ensure => 'running',
  enable => true,
}
