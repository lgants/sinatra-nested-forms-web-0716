require './environment'

module FormsLab
  class App < Sinatra::Base

    # configure do
    # 	set :new, 'pirates/new'
    # 	set :show, 'pirates/show'
    # end

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
