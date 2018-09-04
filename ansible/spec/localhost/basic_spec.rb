require 'spec_helper'

describe package('git-core') do
  it { should be_installed }
end

describe package('ansible') do
  it { should be_installed }
end

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/var/www/html/index.html') do
  its(:content) { should match /<title>2048<\/title>/ }
end
