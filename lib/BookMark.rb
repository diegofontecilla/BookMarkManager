require 'pg'

class Bookmark
  def self.all
    result = database.exec("SELECT * FROM bookmarks")
    result.map { |link| link['url'] }
  end

  def self.create(options)
    return false unless is_url?(options[:url])
    database.exec("INSERT INTO bookmarks (url) VALUES('#{options[:url]}');")
  end


  private
  def self.database
    if ENV['ENVIRONMENT'] == 'test'
      PG.connect(dbname: 'bookmark_manager_test')
    else
      PG.connect(dbname: 'bookmark_manager')
    end
  end

  def self.is_url?(url)
    url =~ /\A#{URI::regexp(['http', 'https'])}\z/
  end
end
