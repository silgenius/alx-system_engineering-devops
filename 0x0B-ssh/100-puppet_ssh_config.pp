# Puppet to make changes to our configuration file

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
