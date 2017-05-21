require "rubygems"
require "bundler"
Bundler.setup(:default)
$:.unshift File.dirname(__FILE__)
$:.unshift File.dirname(__FILE__) + "/lib"
require 'sinatra'

def require_directory(dir)
  Dir["#{dir}/**/*.rb"].each do |lib|
    require lib
  end
end
