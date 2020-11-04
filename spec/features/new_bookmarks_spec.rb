require 'pg'

feature 'Add a new bookmark' do
  scenario 'A user can add a new bookmark to the list' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    visit '/bookmarks'
    click_button 'Add New Bookmark'
    fill_in :url, with:'http://www.bbc.co.uk'
    fill_in :title, with:'News'
    click_button 'Add'
    expect(page).to have_content 'News'
  end
end
