# vi /etc/puppet/manifests/site.pp
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

import 'config.pp'
import 'common.pp'
import 'folders.pp'
import 'webmin.pp'
import 'common.pp'
import 'folders.pp'
import 'webmin.pp'
import 'dropbox.pp'


class common {
include ssh
include htop
include passwd
}

node default {
include common
}

############Главный медиацентр

node xbmc {
include common
include folders
include webmin
<<<<<<< HEAD
#include deluge
include dropbox
}

