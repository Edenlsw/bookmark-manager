require 'pg'

class Bookmark
  def self.all
    # [
    #   "https://www.google.com",
    #   "https://www.asos.com"
      
    # ]
    connection = PG.connect(dbname: 'bookmarkmanager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }

  end
end


