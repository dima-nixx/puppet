class ati {
      package { "fglrx":
            ensure => installed,
            require => package["lightdm"],
      }
      
      package {"lightdm":
            ensure => installed,
      }
      
      package {"lightdm-gtk-greeter":
            ensure => installed,
            require => package["lightdm"],
      }
      
}
