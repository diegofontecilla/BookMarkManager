require 'bookmark'

describe Bookmark do
   describe '.all' do
     it 'returns all bookmark' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("www.theguardian.com")
      expect(bookmarks).to include("www.repubblica.it")
      expect(bookmarks).to include("www.latercera.com")
    end
  end
end
