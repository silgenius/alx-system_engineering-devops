# Puppet to make changes to our configuration file


exec { 'Declare identity file':
  command => 'sed -i \'s|IdentityFile.*|IdentityFile ~/.ssh/school|g\' /root/.ssh/school',
  path    => ['/usr/bin', '/usr/local/bin', '/opt/puppetlabs/bin'],
}

exec { 'Turn off passwd auth':
  command => 'sed -i \'s|PasswordAuthentication.*|PasswordAuthentication no|g\' /root/.ssh/school',
  path    => ['/usr/bin', '/usr/local/bin', '/opt/puppetlabs/bin'],
}
