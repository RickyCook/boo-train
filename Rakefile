# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'ruby-lint/rake_task'
require 'rubocop/rake_task'

Rails.application.load_tasks

RuboCop::RakeTask.new do |t|
    t.patterns = ['app', 'features', 'test']
end
RubyLint::RakeTask.new do |t|
    t.name  = 'lint'
    t.files = ['app', 'features', 'test']
end

task :ci => [:rubocop, :lint, :cucumber]
