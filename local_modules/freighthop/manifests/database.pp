class freighthop::database(
  $servers = []
) {
  if member($servers, 'postgres') {
    class { 'freighthop::database::postgres':}
  }
  if member($servers, 'mysql') {
    class { 'freighthop::database::mysql':}
  }
  if member($servers, 'cassandra') {
    class { 'freighthop::database::cassandra':}
  }
}
