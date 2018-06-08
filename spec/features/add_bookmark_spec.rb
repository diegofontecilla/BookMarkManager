feature 'adding a new bookmark' do
  scenario 'user can add bookmark' do
    visit('/bookmark/new')
    fill_in('url', with: 'http://www.elmostrador.cl/')
    click_button 'Submit'
    expect(page).to have_content 'http://www.elmostrador.cl/'
  end

  scenario 'The bookmark must be a valid url' do
    visit('/bookmark/new')
    fill_in('url', with: 'theguardian')
    click_button 'Submit'

    expect(page).not_to have_content 'theguardian'
    expect(page).to have_content 'You must submit a real url'
  end

end
