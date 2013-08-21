class samba {
  include samba::server::install
  include samba::server::config
  include samba::server::service
}
