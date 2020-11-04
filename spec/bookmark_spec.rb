require 'bookmark'
require_relative './features/setup_test_database'

describe Bookmark do

before(:each) do
  setup_test_database
end

describe '.all' do
it 'returns a list of bookmarks' do
  connection = PG.connect(dbname: 'bookmark_manager_test')

  # Add the test data
  Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers')
  Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Tech')
  Bookmark.create(url: 'http://www.google.com', title: 'Google')

  bookmarks = Bookmark.all

  expect(bookmarks).to include('Makers')
  expect(bookmarks).to include('Tech')
  expect(bookmarks).to include('Google')
end
end

describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create(url: 'http://wwww.testbookmark.com', title: 'Test')
    expect(Bookmark.all).to include('Test')
  end
end
end
