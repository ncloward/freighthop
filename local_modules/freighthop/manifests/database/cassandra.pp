class freighthop::database::cassandra(
  $cluster_name  = 'freighthop',
  $seeds         = [ '27.0.0.1', ],
) {
  class { '::cassandra':
    package_name => "dsc20",
    cluster_name => $cluster_name,
    seeds        => $seeds,
  }
}