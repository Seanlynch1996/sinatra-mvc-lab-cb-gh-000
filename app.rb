require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    p_latin = PigLatinize.new
    #p_latin.text = params[:input].to_s


    erb :final
  end

end
