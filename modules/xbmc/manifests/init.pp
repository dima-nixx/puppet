# Class to install and configure deluge daemon
class xbmc {

    package {
        'xbmc': ensure => present;
        'xbmc-bin': ensure => present;
    	require => apt::ppa { 'ppa:wsnipex/xbmc-xvba-frodo':  };
      #  require => ati;
    }
 

#    file {
#       '/etc/init//.conf':
#          ensure => file,
#         mode   => '0644',
#        owner  => root,
#       group  => root,
#      source => 'puppet:///modules/xbmc/*.conf';


}

