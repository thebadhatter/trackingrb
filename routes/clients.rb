# clients.rb

class Server < Sinatra::Base
  get '/clients/:id' do
    erb :"users/show"
  end


  # more routes
end
