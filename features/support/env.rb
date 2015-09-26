require 'calabash-android/cucumber'
require 'pry'
require 'rspec/matchers'
require "nakal/cucumber"

$PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '../..'))

Nakal.platform = :android
Nakal.timeout = 1