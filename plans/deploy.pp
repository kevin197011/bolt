plan deploy (
  TargetSpec $nodes
) {
  run_command('date', $nodes)
  run_command('uptime', $nodes)
}
