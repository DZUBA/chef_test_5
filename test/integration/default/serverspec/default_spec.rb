require 'serverspec'

set :backend, :cmd
set :os, family: 'windows'

describe file('C:\\Program Files\\Greenshot\\Greenshot.exe') do
  it { should exist }
end

describe windows_feature('Hyper-V-PowerShell') do
  if { should be_installed.by('powershell') }
end
