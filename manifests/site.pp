#include foo
#include nginx
#include motd 
#include ntp

node default{
  # include role::dbserver
  #include role::webserver
  # notify ("This is custom message:" $custommessage)
 class { 'webserver':
    #template => 'motd/web_server.epp',
    content => $content ,
  }
}

#if $facts['is_virtual'] {
  # Our NTP module is not supported on virtual machines:
#  warning('Tried to include class ntp on virtual machine; this node might be misclassified.')
#} elsif $facts['os']['name'] == 'Darwin' {
#  warning('This NTP module does not yet work on our Mac laptops.')
#} else {
  # Normal node, include the class.
#  include ntp
#}
