# Puppet to make changes to our configuration file

file_line {'ensure SSH client configuration must be configured to use the private key ~/.ssh/school':
  path  => '/root/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile.*'
}

file_line {'ensure  SSH client configuration must be configured to refuse to authenticate using a password':
  path  => '/root/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication.*'
}
