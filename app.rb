require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed = PigLatinizer.new("")
    @user_text = params[:user_input]
    erb :final

  end

end
