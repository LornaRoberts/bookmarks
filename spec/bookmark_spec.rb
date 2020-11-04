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
  Bookmark.create('http://www.makersacademy.com')
  Bookmark.create('http://www.destroyallsoftware.com')
  Bookmark.create('http://www.google.com')

  bookmarks = Bookmark.all

  expect(bookmarks).to include('http://www.makersacademy.com')
  expect(bookmarks).to include('http://www.destroyallsoftware.com')
  expect(bookmarks).to include('http://www.google.com')
end
end

describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create('http://wwww.testbookmark.com')
    expect(Bookmark.all).to include('http://wwww.testbookmark.com')
  end
end
end
