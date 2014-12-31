require File.join(File.dirname(__FILE__), 'lib/dynamic_cloudflare.rb')
require 'rspec/core/rake_task'
require 'cucumber/rake/task'
require 'coveralls/rake/task'

Coveralls::RakeTask.new
Cucumber::Rake::Task.new

task :default => [:cucumber, 'coveralls:push']
