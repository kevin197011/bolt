plan bolt::deploy (
  TargetSpec $nodes
) {
  $date_result = run_command('date', $nodes)
  out::message($date_result)

  $uptime_result = run_command('uptime', $nodes)
  out::message($uptime_result)
}
