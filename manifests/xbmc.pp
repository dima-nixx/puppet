class webmin {
	service { webmin:
 	   	ensure => running,
		require => package["webmin"],
	}

   	package { "webmin": 
    		ensure => installed,
    		require => Apt::Source ['webmin']
    	}
    

    	apt::source { 'webmin':
 		location   => 'http://download.webmin.com/download/repository',
  		repos      => 'sarge contrib',
  	}

}
