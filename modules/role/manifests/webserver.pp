#  Role Web Server 
class role::webserver{
  include profile::motd
  include profile::ntp
}
