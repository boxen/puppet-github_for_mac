require 'spec_helper'

describe 'github_for_mac' do
  it do
    should contain_package('GitHubForMac').with({
      :source   => 'https://github-central.s3.amazonaws.com/mac/812e9f1a-81f9-11e2-842a-d627744bf6bd.zip',
      :provider => 'compressed_app'
    })
  end
end