# No PasswordAuthentication using puppet script 
file { '/etc/ssh/ssh_config':
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => "
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
