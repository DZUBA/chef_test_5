require 'serverspec'

set :backend, :cmd
set :os, family: 'windows'

describe package('install GreenShot') do
  it { should be_installed }
end

describe windows_feature('Hyper-V-PowerShell') do
  if { should be_installed('powershell') }
end
