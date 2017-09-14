# Test that the final state of a machine is what is expected.  For more details,
# see: https://github.com/mizzy/serverspec

require_relative '../spec_helper'

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
