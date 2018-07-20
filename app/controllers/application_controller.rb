require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  post "/diagnose" do
    @symptoms = params[:symptoms]
    return erb :diagnose
  end 
  
   get '/learn_more' do
    return erb :learn_more
  end
  
  
end
