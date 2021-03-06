require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    'hello World' 
    
  end

  get "/test" do 
    'test page'
    end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'/bookmarks/index'
  end

  get "/bookmarks/new" do 
    erb :'/bookmarks/new'
  end

  post '/bookmarks' do 
    # url = params['url']
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    # redirect '/bookmarks'

    # refactored code

    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
 

  run! if app_file == $0
end
