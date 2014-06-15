# Public: Install GitHub to /Applications.
#
# include github_for_mac
class github_for_mac {
  package { 'GitHub':
    source   => 'https://github-central.s3.amazonaws.com/mac/GitHub%20for%20Mac%20181.zip',
    provider => 'compressed_app'
  }

  file { 'github_cli_symlink':
    ensure  => link,
    source  => "${boxen::config::bindir}/github",
    target  => '/Applications/GitHub.app/Contents/MacOS/github_cli',
    mode    => '0755',
    require => Package['GitHub']
  }
}
