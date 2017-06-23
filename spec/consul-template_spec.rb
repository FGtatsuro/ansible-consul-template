require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe command('consul-template --version') do
  its(:exit_status) { should eq 0 }
end

describe file('/usr/local/bin/consul-template') do
  it { should be_executable }
end
