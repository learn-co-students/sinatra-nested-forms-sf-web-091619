require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :'/pirates/new'
    end

    post '/pirates' do

      @pirate = Pirate.new(params[:pirate])
      # [:name], params[:pirate][:weight], params[:pirate][:height])
      
      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      
      @ships = params[:pirate][:ships]
      @ships = @ships.map do |ship|
        Ship.new(ship)
      end
      # @ship2 = params[:pirate][:ships][1]

      erb :'/pirates/show' 
    end

  end
end
