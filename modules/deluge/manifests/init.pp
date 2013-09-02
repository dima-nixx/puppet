class xbmc {

	service {'deluged': 
		ensure => running,
		ensure => enable,
  		require => Package['deluged'],
		}

  	package {'deluged': ensure => installed,}
    
    
    
    
    
#   user { 'xbmc':
#        ensure           => 'present',
#        groups           => ['video', 'audio'],
#        home             => '/home/xbmc/',
#        shell            => '/bin/bash',
#        }
#    
#    
#    
#    file { 'lightdm.conf':
#        path => '/etc/lightdm/lightdm.conf',
#        ensure => file,
#        mode   => '0644',
#        owner  => root,
#        group  => root,
#        source => 'puppet:///modules/xbmc/files/lightdm.conf';
#    }
#    
#    file { 'XBMC.desktop':
#        path => '/usr/share/xsessions/XBMC.desktop',
#        ensure => file,
#        mode   => '0644',
#        owner  => root,
#        group  => root,
#        source => 'puppet:///modules/xbmc/files/XBMC.desktop';
#    }

}
