require './environment'
module FormsLab
  class App < Sinatra::Base
    get('/') { erb :root }
    get('/new') { erb :"pirates/new" }
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      erb :"pirates/show"
    end
    get('/show') { erb :"pirates/show" }
  end
end
