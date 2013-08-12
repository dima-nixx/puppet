# vi /etc/puppet/manifests/site.pp
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
<<<<<<< HEAD
import 'config.pp'
import 'common.pp'
import 'folders.pp'
import 'webmin.pp'
=======
import 'common.pp'
import 'folders.pp'
import 'webmin.pp'
import 'dropbox.pp'
>>>>>>> 727ef9ac7b765dfa75bf4817772ac979e20c39db

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
=======
>>>>>>> 727ef9ac7b765dfa75bf4817772ac979e20c39db
include dropbox
}

