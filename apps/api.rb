require 'sinatra'
require 'yajl'
class API < Sinatra::Base
  use Rack::Logger
  get '/healthcheck' do
    Yajl::Encoder.encode({"status" => "ok"})
  end
end
