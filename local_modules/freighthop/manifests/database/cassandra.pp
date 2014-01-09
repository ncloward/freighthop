class freighthop::database::cassandra(
  $package_name  = 'dsc20',
  $cluster_name  = 'freighthop',
  $seeds         = [ '127.0.0.1', ],
) {
  class { '::cassandra':
    package_name => $package_name,
    cluster_name => $cluster_name,
    seeds        => $seeds,
  }
}