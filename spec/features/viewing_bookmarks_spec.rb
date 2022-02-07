feature 'view bookmarks ' do 
  scenario "usser can view all the bookmarks" do 
    visit('/bookmarks')
    expect(page).to have_content "https://www.google.com"
    expect(page).to have_content "https://www.asos.com"

  end
end