feature 'viewing valid bookmarks' do
  scenario 'the bookmark can be seen' do
    visit('/bookmarks')
    expect(page).to have_content "https://www.bbc.co.uk"
    expect(page).to have_content "https://www.google.com"
  end
end
