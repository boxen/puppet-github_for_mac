# Public: Install GitHub to /Applications.
#
# include github_for_mac
class github_for_mac {
  package { 'GitHubForMac':
    source   => 'https://github-central.s3.amazonaws.com/mac/812e9f1a-81f9-11e2-842a-d627744bf6bd.zip',
    provider => 'compressed_app'
  }
}
