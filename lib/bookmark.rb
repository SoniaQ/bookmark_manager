require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  #   [
  #     "https://makers.tech/",
  #     "http://google.com",
  #     "https://snake.googlemaps.com/",
  #     "https://beeroclock.in/"
  #   ]
  end
end
