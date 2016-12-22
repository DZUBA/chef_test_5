#
# Cookbook:: chef_test_5
# Recipe:: default
#
# Copyright:: 2016, The Authors, All Rights Reserved.

# Installing GreenShot via windows_package
windows_package 'GreenShot' do
  source 'https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.9.104/Greenshot-INSTALLER-1.2.9.104-RELEASE.exe'
  checksum '3B9C34EBACD006834D85E95C0F3DA5363285CA90'
  installer_type :custom
  action :install
end
