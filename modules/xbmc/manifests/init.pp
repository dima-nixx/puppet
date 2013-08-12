class xbmc {

    apt::ppa {'ppa:wsnipex/xbmc-xvba-frodo': ensure => installed,}
    
    package {'xbmc': ensure => installed,}
    
    package {'xbmc-bin': ensure => installed,}
    
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

