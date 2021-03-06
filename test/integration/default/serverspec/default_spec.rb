require 'serverspec'

set :backend, :cmd
set :os, family: 'windows'

describe package('Greenshot 1.2.9.104') do
  it { should be_installed }
end

describe windows_feature('Hyper-V-PowerShell') do
  it { should be_installed.by('powershell') }
end
