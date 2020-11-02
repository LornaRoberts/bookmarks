require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'shows the list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://www.google.com")
      expect(bookmarks).to include("https://www.bbc.co.uk")
    end
  end
end
