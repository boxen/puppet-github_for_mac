require 'spec_helper'

describe 'github_for_mac' do
  it do
    should contain_package('GitHub').with({
      :source   => 'https://github-central.s3.amazonaws.com/mac/GitHub%20for%20Mac%20181.zip',
      :provider => 'compressed_app'
    })
  end
end
