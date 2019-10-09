require './environment'


module FormsLab
  class App < Sinatra::Base
    # set :views, "views"

    get '/' do
      # @pirate = Pirate.all
      erb :'/pirates/index'
    end

    get '/new' do
      erb :'/pirates/new'
    end

    get '/show' do
    #  @pirate = Pirate.find(params[:id])
      erb :'/pirates/show'
    end

    post '/pirates' do
      # binding.pry
      @pirate= Pirate.new(params[:pirate])
      @ship1= Ship.new(params[:pirate][:ships][0])
      @ship2= Ship.new(params[:pirate][:ships][1])
      erb :"/pirates/show"
    end

  end

end
