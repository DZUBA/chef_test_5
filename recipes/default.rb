#
# Cookbook:: chef_test_5
# Recipe:: default
#
# Copyright:: 2016, The Authors, All Rights Reserved.

# Add feature Hyper-V Powershell
windows_feature 'Hyper-V-PowerShell' do
  action :install
  provider :windows_feature_powershell
end

# Installing GreenShot via windows_package
windows_package 'Greenshot 1.2.9.104' do
  source 'https://github.com/greenshot/greenshot/releases/download/Greenshot-RELEASE-1.2.9.104/Greenshot-INSTALLER-1.2.9.104-RELEASE.exe'
  options '-ms'
  action :install
  installer_type :inno
end
