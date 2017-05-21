require 'sinatra'
class App < Sinatra::Base
  use Rack::Logger
  set :views, File.expand_path(File.dirname(__FILE__) + '/../views')

  get '/css/:sheet.css' do
    content_type 'text/css', :charset => 'utf-8'
    scss(params[:sheet].to_sym)
  end

  get '*' do
    "ok"
  end
end
