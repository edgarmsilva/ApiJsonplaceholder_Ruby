require "rubygems"
require "cucumber"
require "cucumber/rake/task"

Cucumber::Rake::Task.new(:apiJsonPlaceholder) do |t|
  t.cucumber_opts = [
    "--format pretty",
  ] # Any valid command line option can go here.
end
