require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Vicki Zhang', 'Malala Yousafzai', 'Amy Feldman', 'Caileen Waldron', 'Alyssa Martel']
    erb :friends
  end
end
