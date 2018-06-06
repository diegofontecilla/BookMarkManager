require 'pg'

feature 'Viewing bookmarms' do
	scenario 'A user can see bookmarks' do
		connection = PG.connect(dbname: 'bookmark_manager_test')
p "test_test"
		connection.exec("INSERT INTO bookmarks VALUES(1, 'www.theguardian.com');")
		connection.exec("INSERT INTO bookmarks VALUES(2, 'www.repubblica.it');")
		connection.exec("INSERT INTO bookmarks VALUES(3, 'www.latercera.com');")

		visit('/bookmark')

		expect(page).to have_content('www.theguardian.com')
		expect(page).to have_content('www.repubblica.it')
		expect(page).to have_content('www.latercera.com')
	end
end
