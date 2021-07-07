require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :'/pirates/index'
    end

    get '/new' do
      erb :'/pirates/new'
    end

    get '/pirates/show' do
      erb :'/pirates/show'
    end

    post '/pirates' do
       @pirate = Pirate.new(params[:pirate])
       @ship_name_1 = Ship.new(params[:pirate][:ships][0])
       @ship_name_2 = Ship.new(params[:pirate][:ships][1])
       erb :"/pirates/show"
    end
  end
end
