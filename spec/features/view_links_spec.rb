feature 'viewing links' do


	scenario 'view links on the page' do


		visit('/bookmark')

		expect(page).to have_content('www.theguardian.com')
		expect(page).to have_content('www.repubblica.it')
		expect(page).to have_content('www.latercera.com')
	end
end
