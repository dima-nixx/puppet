class ati {
      package { "fglrx":
                ensure => installed,
                require => Apt::Source ['webmin']
        }

}
