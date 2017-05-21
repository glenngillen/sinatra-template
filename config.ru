require './environment'
require 'rack/static'
require 'config/session'
require_directory('apps')

use Rack::Static, :urls => ["/images"], :root => "public"
use Rack::Session::Cookie, SESSION_OPTIONS

run Rack::URLMap.new(
  "/api" => API,
  "/" => App
)
