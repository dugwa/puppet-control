class profile::apache(
  Boolean $default_vhost = false,
  Integer $port = 80,
  String $hostname = $facts['fqdn']
  String $docroot = "/var/www/$hostname",
) {
  class { '::apache':
    default_vhost => $default_vhost,
  }

  ::apache::vhost { $hostname:
    port => $port,
    docroot => $docroot,
  }

}
