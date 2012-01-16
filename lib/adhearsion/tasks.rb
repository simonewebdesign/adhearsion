require 'adhearsion'

%w<
  configuration
  testing
  plugins
>.each do |file|
  require "adhearsion/tasks/#{file}"
end

Adhearsion::Plugin.load_tasks

namespace :adhearsion do
  desc "Dump useful information about this application's Adhearsion environment"
  task :about do
    puts "Adhearsion version: #{Adhearsion::VERSION}"
  end
end

task :default => "adhearsion:about"
