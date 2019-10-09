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

    # get '/pirates/show' do
    #   erb :'/pirates/show'
    # end

    # get '/pirates/:name' do
    #   binding.pry
    #   @pirate = Pirate.all.find {|pirate| pirate.name == params[:name]}
    #   erb :'/pirates/show'
    # end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new(params[:pirate][:ships][0])
      @ship2 = Ship.new(params[:pirate][:ships][1])
      erb :'/pirates/show'
    end

  end
end
