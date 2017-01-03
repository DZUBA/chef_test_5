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
windows_package node['windows']['package'] do
  source node['windows']['package_source']
  options '-ms'
  action :install
  installer_type :inno
end
