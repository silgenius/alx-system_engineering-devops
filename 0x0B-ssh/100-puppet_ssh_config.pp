# Puppet to make changes to our configuration file


$file_content = "Host *
\tIdentityFile ~/.ssh/school
\tPasswordAuthentication no
\tSendEnv LANG LC_*
\tHashKnownHosts yes
\tGSSAPIAuthentication yes
"

file { '/etc/ssh/ssh_config':
path    => '/etc/ssh/ssh_config',
ensure  => present,
content => $file_content,
}
