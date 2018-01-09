require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    p_latin = PigLatinize.new
    #@analyzed = p_latin.piglatinize(params[:input])



    erb :final
  end

end
