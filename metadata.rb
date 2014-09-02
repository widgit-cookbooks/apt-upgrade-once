name             'apt-upgrade-once'
maintainer       'Simon Detheridge'
maintainer_email 'simon@widgit.com'
license          'Apache v2.0'
description      'Runs apt-get upgrade once'
long_description 'Upgrades all packages on a debian or ubuntu box, but only once'
version          '0.1.0'
attribute        'apt-upgrade-once/statusfile',
  :display_name => 'Status file location',
  :description => 'Location of status file that prevents packages being re-upgraded',
  :type => 'string',
  :required => 'optional',
  :default => '/etc/.apt-upgrade-run'

recipe "apt-upgrade-once::default", "Upgrades system packages on first run"

supports 'ubuntu'
supports 'debian'
