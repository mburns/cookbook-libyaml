require_relative 'spec_helper'

describe package('libyaml') do
  it { should be_installed }
end
