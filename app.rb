require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

# get '/' do
#   "Hello world!"
# end
get '/' do
  'Bookmark Manager'
end

get '/bookmarks' do
  @bookmarks = Bookmark.all
  erb :'bookmarks/index'
end

# start the server if ruby file executed directly
  run! if app_file == $0

end
