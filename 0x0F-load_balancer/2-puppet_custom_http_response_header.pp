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
}"

$host = $::hostname
$config_header="http {\n\n\tadd_header X-Served-By \"${host}\";"

exec {'apt_update':
  command => 'apt-get update',
  path    => ['usr/bin', 'usr/sbin'],
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

service {'nginx':
  ensure => 'running',
  enable => true,
}
