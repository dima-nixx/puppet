##### Файл пользователей
class passwd {
file { "/etc/passwd":owner => root,group => bin,mode => 644,}
}

##### Менеджер задач

class htop {
package {'htop': ensure => installed}
}

### SSH

class ssh {
package {'openssh-server': ensure => installed}
service {'ssh': enable => true, require => package ['openssh-server']}
}
