require 'rake/testtask'
require 'rubocop/rake_task'

Rake::TestTask.new do |task|
  task.libs << %w(test lib)
  task.pattern = 'test/**/test_*.rb'
end

RuboCop::RakeTask.new

task default: [:test, :rubocop]
