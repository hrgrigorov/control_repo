class role::app_server.pp {
  include profile::web
  include profile::base
  include profile::app
}
