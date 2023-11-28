require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "yard"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

YARD::Rake::YardocTask.new do |t|
  t.files = ["lib/**/*.rb", OTHER_PATHS]     # optional
  t.options = ["--any", "--extra", "--opts"] # optional
  t.stats_options = ["--list-undoc"]         # optional
end

task default: %i[spec]
