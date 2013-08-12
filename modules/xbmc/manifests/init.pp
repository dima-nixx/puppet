# Class to install and configure deluge daemon
class xbmc {

    apt::ppa {'ppa:wsnipex/xbmc-xvba-frodo':}
    package {'xbmc': ensure => present}
    package {'xbmc-bin': ensure => present,}
    
   user { 'xbmc':
  ensure           => 'present',
  groups           => ['video', 'audio'],
  home             => '/home/xbmc/',
  shell            => '/bin/bash',
  }
    
    
    file { '/etc/lightdm/lightdm.conf':
        ensure => file,
        mode   => '0644',
        owner  => root,
        group  => root,
        source => 'puppet:///modules/xbmc/files/lightdm.conf';
    }
    
    file { '/usr/share/xsessions/XBMC.desktop':
        ensure => file,
        mode   => '0644',
        owner  => root,
        group  => root,
        source => 'puppet:///modules/xbmc/files/XBMC.desktop';
    }

}

