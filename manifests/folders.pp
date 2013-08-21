class folders

{
group {"films":ensure => present}
group {"music":ensure => present}
group {"serials":ensure => present}
group {"photo":ensure => present}
group {"share":ensure => present}
group {"soft":ensure => present}
group {"games":ensure => present}
group {"etc":ensure => present}

file { "/home/media":		ensure => "directory",	owner => "root",	group => "bin",		mode => "755",}
file { "/home/media/films":	ensure => "directory",	owner  => "root",	group  => "films",	mode   => 775,}
file { "/home/media/serials":	ensure => "directory",	owner  => "root",	group  => "serials",	mode   => 775,}
file { "/home/media/music":	ensure => "directory",	owner  => "root",	group  => "music",	mode   => 775,}
file { "/home/media/photo":	ensure => "directory",	owner  => "root",	group  => "photo",	mode   => 770,}
file { "/home/media/share":	ensure => "directory",	owner  => "root",	group  => "share",	mode   => 777,}
file { "/home/media/soft":	ensure => "directory",	owner  => "root",	group  => "soft",	mode   => 775,}
file { "/home/media/games":	ensure => "directory",	owner  => "root",	group  => "games",	mode   => 775,}
file { "/home/media/etc":	ensure => "directory",	owner  => "root",	group  => "etc",	mode   => 770,}
file { "/home/media/temp":	ensure => "directory",	owner  => "root",	group  => "users",	mode   => 777,}
}

