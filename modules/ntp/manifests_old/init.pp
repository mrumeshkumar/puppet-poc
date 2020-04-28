class ntp { 
  service{"ntpd":
  servers => [ '2.2.2.2' ],
    #autoupdate => false,
    #restrict   => [],
    #enable     => true,
    #ensure => 'running',
  }
}
