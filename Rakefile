#!/usr/bin/env rake
require 'foodcritic'
require 'rubocop/rake_task'

# Foodcritic
desc 'Run foodcritic lint checks'
task :foodcritic do
  if Gem::Version.new('1.9.2') <= Gem::Version.new(RUBY_VERSION.dup)
    puts 'Running Foodcritic tests...'
    FoodCritic::Rake::LintTask.new do |t|
      t.options = { fail_tags: ['any'] }
      puts 'done.'
    end
  else
    puts "WARN: foodcritic run is skipped as Ruby #{RUBY_VERSION} is < 1.9.2."
  end
end

# Rubocop
desc 'Run Rubocop lint checks'
task :rubocop do
  RuboCop::RakeTask.new
end

desc 'Run linters'
task lint: %i[rubocop foodcritic]

# Run the whole shebang
desc 'Run all tests'
task test: [:lint]

# Travic CI
desc 'Run tests on Travis CI'
task travis: [:lint]

# the default rake task should just run it all
task default: [:test]
