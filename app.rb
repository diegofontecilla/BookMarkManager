require 'sinatra/base'

class BookMarkManager < Sinatra::Base
	
	get '/' do
    	erb :index
  	end


	  # Start the server if ruby file executed directly
  run! if app_file == $0
end