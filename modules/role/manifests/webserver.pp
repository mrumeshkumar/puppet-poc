class role::webserver{
  class { 'motd':
    template => 'motd/web_server.epp',
  }
  
  class { 'ntp':
    servers => [ '2.2.2.2' ],
  }

}
