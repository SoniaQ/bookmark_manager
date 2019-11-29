require 'bookmark'

describe Bookmark do

  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://askjeeves.net/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://snake.googlemaps.com/');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://beeroclock.in/');")

      bookmarks = Bookmark.all
      # expect(bookmarks).to include("https://makers.tech/")
      # expect(bookmarks).to include("http://google.com")
      expect(bookmarks).to include("https://askjeeves.net/")
      expect(bookmarks).to include("https://snake.googlemaps.com/")
      expect(bookmarks).to include("https://beeroclock.in/")
    end
  end

end
