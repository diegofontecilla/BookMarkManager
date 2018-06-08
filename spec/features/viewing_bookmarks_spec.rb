require 'bookmark'

feature 'Viewing bookmarks' do
	scenario 'A user can see bookmarks' do

		Bookmark.create(url: 'http://www.theguardian.com')
		Bookmark.create(url: 'http://www.repubblica.it')
		Bookmark.create(url: 'http://www.latercera.com')

		visit('/bookmark')

		expect(page).to have_content('http://www.theguardian.com')
		expect(page).to have_content('http://www.repubblica.it')
		expect(page).to have_content('http://www.latercera.com')
	end
end
