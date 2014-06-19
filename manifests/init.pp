# Public: Install GitHub to /Applications.
#
# include github_for_mac
class github_for_mac (
  $ensure = 'present'
) {
  package { 'GitHub':
    ensure   => $ensure,
    flavor   => 'zip',
    provider => 'compressed_app',
    source   => 'https://central.github.com/mac/latest'
  }

  file { "${boxen::config::bindir}/github":
    ensure  => link,
    target  => '/Applications/GitHub.app/Contents/MacOS/github_cli',
    mode    => '0755',
    require => Package['GitHub']
  }
}
