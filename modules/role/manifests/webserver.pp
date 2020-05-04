class role::webserver (String $content){
  class { 'motd':
    #template => 'motd/web_server.epp',
    content => $content ,
  }
  
 # class { 'ntp':
  #  servers => [ '2.2.2.2' ],
  #}

}
