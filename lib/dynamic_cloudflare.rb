require 'sinatra/base'
require 'dotenv'

Dotenv.load

class DynamicCloudflare < Sinatra::Base
  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    username == ENV['USERNAME'] and password == ENV['PASSWORD']
  end

  get '/' do
    erb "Hello #{request.ip} from DynamicCloudflare!"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
