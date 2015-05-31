# encoding: UTF-8

# syntax/lint checks: RuboCop & Foodcritic
namespace :lint do
  require 'rubocop/rake_task'
  require 'foodcritic'

  desc 'Run Ruby syntax/lint checks'
  RuboCop::RakeTask.new(:ruby)

end

desc 'Run all syntax/lint checks'
task lint: ['lint:ruby']

# Travic CI
desc 'Run tests on Travis CI'
task travis: [:lint]

# the default rake task should just run it all
task default: [:lint]
