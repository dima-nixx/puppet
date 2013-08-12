# Class to install and configure deluge daemon
class deluge {

    package {
        'deluged':
            ensure => present;

        'deluge-web':
            ensure => present;
    }

    group {
        'deluge':
            ensure => present,
            system => true;
    }

    user {
        'deluge':
            ensure     => present,
            home       => '/var/lib/deluge',
            managehome => true,
            system     => true,
            gid        => 'deluge',
            require    => Group['deluge'];
    }


    file {
        '/etc/init/deluged.conf':
            ensure => file,
            mode   => '0644',
            owner  => root,
            group  => root,
            source => 'puppet:///modules/deluge/deluged.conf';

        '/etc/init/deluge-web.conf':
            ensure => file,
            mode   => '0644',
            owner  => root,
            group  => root,
            source => 'puppet:///modules/deluge/deluge-web.conf';

        '/var/log/deluge':
            ensure => directory,
            mode   => 0750,
            owner  => deluge,
            group  => deluge;

	'/var/lib/deluge/.config/deluge/autoadd.conf':
            ensure => file,
            mode   => '0644',
            owner  => deluge,
            group  => deluge,
            source => 'puppet:///modules/deluge/autoadd.conf';

        '/var/lib/deluge/.config/deluge/web.conf':
            ensure => file,
            mode   => '0644',
            owner  => deluge,
            group  => deluge,
            source => 'puppet:///modules/deluge/web.conf';
    }

    service {
        'deluged':
            ensure   => running,
            provider => upstart,
            subscribe  => File['/etc/init/deluged.conf'];

        'deluge-web':
            ensure     => running,
            provider => upstart,
            subscribe  => File['/etc/init/deluge-web.conf'];

    }

    logrotate::rule { 'deluge':
        path          => '/var/log/deluge/*.log',
        rotate        => 4,
        rotate_every  => week,
        sharedscripts => true,
        missingok     => true,
        delaycompress => true,
        ifempty       => false,
        compress      => true,
        postrotate    => 'initctl restart deluged ; initctl restart deluge-web';
    }
}

