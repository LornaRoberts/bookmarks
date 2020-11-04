require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get "/bookmarks" do
    @bookmarks = Bookmark.all
      erb :'bookmarks/index'
  end

  get "/add" do
    erb  :'bookmarks/add'
  end

  post "/add" do
    Bookmark.create(params[:url])

    redirect '/bookmarks'
  end

  run! if app_file == $0

end
