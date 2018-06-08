require 'bookmark'

describe Bookmark do
   describe '.all' do
     it 'returns all bookmarks in an array' do

      Bookmark.create(url: 'http://www.theguardian.com')
   		Bookmark.create(url: 'http://www.repubblica.it')
   		Bookmark.create(url: 'http://www.latercera.com')

      expected_bookmarks = [
        "http://www.theguardian.com",
        "http://www.repubblica.it",
        "http://www.latercera.com"
      ]

      expect(Bookmark.all).to eq expected_bookmarks
    end
  end

  describe '.create' do
    it 'creates new bookmark' do
      Bookmark.create(url: 'http://www.elmostrador.cl')
      expect(Bookmark.all).to include 'http://www.elmostrador.cl'
    end
  end
end
