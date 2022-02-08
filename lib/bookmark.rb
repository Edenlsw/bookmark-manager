require 'pg'

class Bookmark
  def self.all
  

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmarkmanager')
    end

    result = connection.exec("SELECT * FROM bookmarks")
    result.map { |bookmark| bookmark['url'] }
      # [
    #   "https://www.google.com",
    #   "https://www.asos.com"
    # ]

  end
end


