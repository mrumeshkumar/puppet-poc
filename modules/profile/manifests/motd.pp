# Profile motd
class profile::motd (
    String $content = 'This is default motd template. profile:motd default.\n',
) {
  class { 'motd':
   content => $content ,
    #template => 'motd/web_server.epp',
  }
}
