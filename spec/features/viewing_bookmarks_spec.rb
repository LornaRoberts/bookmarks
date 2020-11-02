feature '/bookmarks' do
  scenario 'we want this page to exist' do
    visit('/bookmarks')
    expect(page).to have_content "This is a bookmarks page"
  end
end
