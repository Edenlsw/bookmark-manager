feature "test page" do 
  scenario "text appers on test page" do 
    visit('/test')
    expect(page).to have_content 'test page'
  end
end