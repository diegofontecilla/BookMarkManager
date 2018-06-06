require 'bookmark'

describe Bookmark do
   describe '.all' do
     it 'returns all bookmarks in an array' do

      Bookmark.create(url: 'www.theguardian.com')
   		Bookmark.create(url: 'www.repubblica.it')
   		Bookmark.create(url: 'www.latercera.com')

      expected_bookmarks = [
        "www.theguardian.com",
        "www.repubblica.it",
        "www.latercera.com"
      ]

      expect(Bookmark.all).to eq expected_bookmarks
    end
  end

  describe '.create' do
    it 'creates new bookmark' do
      Bookmark.create(url: 'www.elmostrador.cl')
      expect(Bookmark.all).to include 'www.elmostrador.cl'
    end
  end
end
