require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])

    erb :display_puppy
  end

end

# App
#   GET /
#     sends a 200 status code
#     has a link with the text "List A Puppy"
#     has a link to list a puppy that links to /new
#   GET /new
#     sends a 200 status code
#     renders a form that can POST a name, breed, and age
#   POST /puppy
#     sends a 200 status code
#     recieves a request from /new at /puppy
#     displays the puppy information dynamically
