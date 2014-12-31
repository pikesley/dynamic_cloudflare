require 'sinatra/base'
require 'dotenv'
require 'httparty'

Dotenv.load

class DynamicCloudflare < Sinatra::Base
  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == ENV['USERNAME'] and password == ENV['PASSWORD']
  end

  get '/' do
    url = 'https://www.cloudflare.com/api.html?a=DIUP'
    url << '&hosts='
    url << ENV['DYNAMIC_HOST']
    url << '&u='
    url << ENV['CF_USERNAME']
    url << '&tkn='
    url << ENV['CF_TOKEN']
    url << '&ip='
    url << request.ip

    HTTParty.get url

    erb "Updating dynamic ip to #{request.ip}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
