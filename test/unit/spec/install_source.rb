shared_examples_for 'libyaml::install_package' do |_platform|
  it 'installs libyaml package' do
    expect(chef_run).to install_package('libyaml')
  end
end

shared_examples_for 'raise error about missing parameters' do
  it 'Runtime error' do
    expect { chef_run }.to raise_error(RuntimeError)
  end
end
