class freighthop::database::cassandra(
  $cluster_name      = 'freighthop',
  $seeds             = [ '127.0.0.1', ],
  $listen_address    = '127.0.0.1',
  $package_name      = 'dsc20',
  $thread_stack_size = '256',
) {
  class { '::cassandra':
    package_name        => $package_name,
    cluster_name        => $cluster_name,
    seeds               => $seeds,
    thread_stack_size   => $thread_stack_size,
    listen_address      => $listen_address
  }
}