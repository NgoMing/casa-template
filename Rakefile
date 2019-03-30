# require File.expand_path('../config/application', __FILE__)

require_relative 'config/application'
require 'rubocop/rake_task'

Rails.application.load_tasks

task :clean_code do
  RuboCop::RakeTask.new(:rubocop) do |t|
    t.options = ['-a']
  end
  # Rake::Task['rubocop'].invoke
  Rake::Task['rails_best_practices:run'].invoke
  Rake::Task['trace_route:run'].invoke
  Rake::Task['rubocop'].invoke
end

task :parallel_test do
  Rake::Task['parallel:spec'].invoke
end

# Myapp::Application.load_tasks
