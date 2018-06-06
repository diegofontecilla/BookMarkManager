require 'bookmark'

feature 'Viewing bookmarks' do
	scenario 'A user can see bookmarks' do

		Bookmark.create(url: 'www.theguardian.com')
		Bookmark.create(url: 'www.repubblica.it')
		Bookmark.create(url: 'www.latercera.com')

		visit('/bookmark')

		expect(page).to have_content('www.theguardian.com')
		expect(page).to have_content('www.repubblica.it')
		expect(page).to have_content('www.latercera.com')
	end
end
