plan bolt::deploy (
  TargetSpec $nodes
) {
  $date_result = run_command('date', $nodes)

  $date_result.each |$result| {
    out::message("Date result from ${$result.target}: message => $result.stdout")
  }

  $uptime_result = run_command('uptime', $nodes)

  $uptime_result.each |$result| {
    out::message("Uptime result from ${$result.target}: message => $result.stdout")
  }
}
