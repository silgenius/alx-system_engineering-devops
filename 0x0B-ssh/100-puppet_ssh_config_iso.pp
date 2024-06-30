# Puppet to make changes to our configuration file

package { 'puppet':
  ensure => 'installed',
}

exec { 'install puppetlabs-stdlib':
  command => 'puppet module install puppetlabs-stdlib',
  unless  => 'puppet module list | grep puppetlabs-stdlib',
  path    => ['/usr/bin', '/usr/local/bin', '/opt/puppetlabs/bin'],
}

file_line {'Declare identity file':
  path  => '/root/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile.*'
}

file_line {'Turn off passwd auth':
  path  => '/root/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication.*'
}
