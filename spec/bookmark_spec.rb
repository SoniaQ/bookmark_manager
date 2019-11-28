require 'bookmark'

describe Bookmark do

  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      # expect(bookmarks).to include("https://makers.tech/")
      # expect(bookmarks).to include("http://google.com")
      expect(bookmarks).to include("https://askjeeves.net/")
      expect(bookmarks).to include("https://snake.googlemaps.com/")
      expect(bookmarks).to include("https://beeroclock.in/")
    end
  end

end
