require 'spec_helper'

describe 'github_for_mac' do
  it do
    should contain_package('GitHub').with({
      :ensure   => 'present',
      :flavor   => 'zip',
      :provider => 'compressed_app',
      :source   => 'https://central.github.com/mac/latest'
    })
  end
end
