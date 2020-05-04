# Profile motd
class profile::ntp (
    Array[String] $servers = [ '1.1.1.1' ],
) {
class { 'ntp':
    servers => $servers,
  }
}
