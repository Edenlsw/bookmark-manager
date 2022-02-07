require 'sinatra/base'
require 'sinatra/reloader'

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

    get "/bookmarks" do
      bookmarks = [
        "https://www.google.com",
        "https://www.asos.com"
      ]
      bookmarks.join
    end

  run! if app_file == $0
end

