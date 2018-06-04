feature 'viewing links' do
	

	scenario 'view links on the page' do
		
		
		visit('/')

		expect(page).to have_content('www.google.com')
		expect(page).to have_content('www.reddit.com')
		expect(page).to have_content('www.this.com')
	end
end