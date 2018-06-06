require 'bookmark'

describe Bookmark do
   describe '.all' do
     it 'returns all bookmarks in an array' do
       connection = PG.connect(dbname: 'bookmark_manager_test')
p "test"
      connection.exec("INSERT INTO bookmarks VALUES(1, 'www.theguardian.com');")
   		connection.exec("INSERT INTO bookmarks VALUES(2, 'www.repubblica.it');")
   		connection.exec("INSERT INTO bookmarks VALUES(3, 'www.latercera.com');")

      expected_bookmarks = [
        "www.theguardian.com",
        "www.repubblica.it",
        "www.latercera.com"
      ]

      expect(Bookmark.all).to eq expected_bookmarks
    end
  end
end
