group {
"films":ensure => present;
"music":ensure => present;
"serials":ensure => present;
"photo":ensure => present;
"share":ensure => present;
"soft":ensure => present;
"games":ensure => present;
"etc":ensure => present;

group {"films":ensure => present}
group {"music":ensure => present}
group {"serials":ensure => present}
group {"photo":ensure => present}
group {"share":ensure => present}
group {"soft":ensure => present}
group {"games":ensure => present}
group {"etc":ensure => present}


class folders
{


file { "/home/media":		ensure => "directory",	owner => "root",	group  => "bin",	mode => "755",}
file { "/home/media":		ensure => "directory",	owner => "root",	group => "bin",		mode => "755",}
file { "/home/media/films":	ensure => "directory",	owner  => "root",	group  => "films",	mode   => 775,	require => group['films']   }
file { "/home/media/serials":	ensure => "directory",	owner  => "root",	group  => "serials",	mode   => 775,	require => group['serials'] }
file { "/home/media/music":	ensure => "directory",	owner  => "root",	group  => "music",	mode   => 775,	require => group['music']   }
file { "/home/media/photo":	ensure => "directory",	owner  => "root",	group  => "photo",	mode   => 770,	require => group['photo']   }
file { "/home/media/share":	ensure => "directory",	owner  => "root",	group  => "share",	mode   => 777,	require => group['share']   }
file { "/home/media/soft":	ensure => "directory",	owner  => "root",	group  => "soft",	mode   => 775,	require => group['soft']    }
file { "/home/media/games":	ensure => "directory",	owner  => "root",	group  => "games",	mode   => 775,	require => group['games']   }
file { "/home/media/etc":	ensure => "directory",	owner  => "root",	group  => "etc",	mode   => 770,	require => group['etc']     }
file { "/home/media/temp":	ensure => "directory",	owner  => "root",	group  => "users",	mode   => 777,				    }

}

