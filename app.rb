require 'sinatra/base'
require './lib/bookmark'
require 'uri'
require 'sinatra'
require 'sinatra/flash'

class BookmarkManager < Sinatra::Base
	enable :sessions
	register Sinatra::Flash

	get '/' do
		'Hello world'
	end

	get '/bookmark' do
		@bookmarks = Bookmark.all
		erb :index
	end

	post '/bookmark' do
		puts params['url']
		redirect('/bookmark')
	end

	get '/bookmark/new' do
		erb :"bookmark/new"
	end

	post '/bookmark/new' do
		if params['url'] =~ /\A#{URI::regexp(['http', 'https'])}\z/
			Bookmark.create(url: params['url'])
		else
			flash[:notice] = 'You must submit a real url'
		end
		redirect '/bookmark'
	end

	  # Start the server if ruby file executed directly
  run! if app_file == $0
end
