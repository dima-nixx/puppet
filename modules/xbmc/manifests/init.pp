# Class to install and configure deluge daemon
class xbmc {

    apt::ppa {'ppa:wsnipex/xbmc-xvba-frodo':}
    package {'xbmc': ensure => present}
    package {'xbmc-bin': ensure => present,}
    
    
#    file {
#       '/etc/init//.conf':
#          ensure => file,
#         mode   => '0644',
#        owner  => root,
#       group  => root,
#      source => 'puppet:///modules/xbmc/*.conf';


}

