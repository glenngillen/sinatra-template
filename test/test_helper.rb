ENV["SESSION_SECRET"] = "session-secret-key-goes-here"
ENV["RACK_ENV"] = "test"
$:.unshift(File.dirname(__FILE__)+'/../')
require 'rubygems'
require 'bundler'
Bundler.setup(:default, :test)
require 'minitest/autorun'
require 'minitest/spec'
require 'rack/test'
require 'rr'
require 'environment'

class MiniTest::Unit::TestCase
  def assert_change(what)
    old = what.call
    yield
    assert_not_equal old, what.call
  end

  def refute_change(what)
    old = what.call
    yield
    refute_equal old, what.call
  end
end

module SinatraTemplate
  module AcceptanceTestMethods
    include Rack::Test::Methods

    def app
      Rack::Builder.new do
        config = File.read('config.ru')
        app = eval config
      end
    end
  end
end
