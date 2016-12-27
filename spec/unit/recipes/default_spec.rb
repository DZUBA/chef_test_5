#
# Cookbook:: chef_test_5
# Spec:: default
#
# Copyright:: 2016, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'chef_test_5::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'windows', version: '2012R2').converge(described_recipe) }

  it 'install GreenShot' do
    expect(chef_run).to install_windows_package('Greenshot 1.2.9.104'). with(source: 'https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.9.104/Greenshot-INSTALLER-1.2.9.104-RELEASE.exe')
  end

  it 'feature Hyper-V-PowerShell' do
    expect(chef_run).to install_windows_feature('Hyper-V-PowerShell')
  end
end
