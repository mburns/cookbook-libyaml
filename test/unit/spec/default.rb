shared_examples_for 'libyaml::install_package' do |_platform|
  it 'installs libyaml package' do
    expect(chef_run).to install_package('libyaml')
  end
end
