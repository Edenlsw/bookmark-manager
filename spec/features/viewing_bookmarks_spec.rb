require 'bookmark'


describe Bookmark do 
  describe '.all' do 
    it 'returns all the bookmarks' do 
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://www.google.com")
      expect(bookmarks).to include("https://www.asos.com")
    end
  end
end


# feature 'view bookmarks ' do 
#   scenario "usser can view all the bookmarks" do 
#     visit('/bookmarks')
#     expect(page).to have_content "https://www.google.com"
#     expect(page).to have_content "https://www.asos.com"

#   end
# end