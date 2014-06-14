# Public: Install GitHub to /Applications.
#
# include github_for_mac
class github_for_mac {
  package { 'GitHub':
    source   => 'https://github-central.s3.amazonaws.com/mac/GitHub%20for%20Mac%20171.zip',
    provider => 'compressed_app'
  }
}
