require 'bookmark'


# describe Bookmark do 
#   describe '.all' do 
#     it 'returns all the bookmarks' do 
#       bookmarks = Bookmark.all
#       expect(page).to have_content "http://www.makersacademy.com"
#       expect(page).to have_content "http://www.destroyallsoftware.com"
#       expect(page).to have_content "http://www.google.com"
#     end
#   end
# end


feature 'view bookmarks ' do 
  scenario "usser can view all the bookmarks" do 
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
      expect(page).to have_content "http://www.destroyallsoftware.com"
      expect(page).to have_content "http://www.google.com"

  end
end