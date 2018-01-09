require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @analyzed = params[:input]
    pig_lat = PigLatinizer.new(@analyzed)
    @result = pig_lat.piglatinize
    erb :final
  end

end
