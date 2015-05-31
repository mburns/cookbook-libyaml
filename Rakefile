# encoding: UTF-8
require 'rubocop/rake_task'

# syntax/lint checks: RuboCop & Foodcritic
namespace :lint do
  require 'rubocop/rake_task'
  require 'foodcritic'

  desc 'Run Ruby syntax/lint checks'
  RuboCop::RakeTask.new(:ruby)

  desc 'Run Chef syntax/lint checks'
  FoodCritic::Rake::LintTask.new(:chef) do |task|
    task.options = {
      fail_tags: ['any']
    }
  end
end

desc 'Run all syntax/lint checks'
task lint: ['lint:ruby', 'lint:chef']

# Travic CI
desc 'Run tests on Travis CI'
task travis: [:lint]

# the default rake task should just run it all
task default: [:lint]
