require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    p_latin = PigLatinizer.new(params[:user_input])
    @analyzed = "Fuck"
    erb :final

  end

end
