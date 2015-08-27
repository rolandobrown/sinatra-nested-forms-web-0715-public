module FormsLab
  class App < Sinatra::Base

    set :views, Proc.new { File.join(root, '../views')}
    set :public_folder, Proc.new { File.join(root, '../../public')}

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/show' do
      erb :'pirates/show'
    end

    post '/pirates' do
      @pirate = params["pirate"]
    end
  end
end
