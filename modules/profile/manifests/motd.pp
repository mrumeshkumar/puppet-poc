# Profile motd
class profile::motd (
    String $content = 'Hello world from profile:motd default.',
) {
  class { 'motd':
    #template => 'motd/web_server.epp',
    content => $content ,
  }
}
