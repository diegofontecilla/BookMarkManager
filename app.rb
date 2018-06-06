require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

	get '/' do
		'Hello world'
	end

	get '/bookmark' do
		@bookmarks = Bookmark.all
		erb :index
	end

	get '/bookmark/new' do
		erb :"bookmark/new"
	end

	post '/bookmark/new' do
		Bookmark.create(url: params['url'])
		redirect '/bookmark'
	end

	  # Start the server if ruby file executed directly
  run! if app_file == $0
end
