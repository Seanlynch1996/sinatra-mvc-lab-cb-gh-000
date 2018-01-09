require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    p_latin = PigLatinize.new("T")
    #@analyzed = params[:user_input]


    erb :final
  end

end
