#  Role Web Server 
class role::dbserver{
  include profile::motd
  include profile::ntp
}
