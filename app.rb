require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

	get '/' do
		'Hello world'
	end

	get '/bookmark' do
		# p ENV

		@bookmarks = Bookmark.all
		erb :index
	end

	  # Start the server if ruby file executed directly
  run! if app_file == $0
end
