feature 'adding a new bookmark' do
  scenario 'user can add bookmark' do
    visit('/bookmark/new')
    fill_in('url', with: 'http://www.elmostrador.cl/')
    click_button 'Submit'
    expect(page).to have_content 'http://www.elmostrador.cl/'
  end
end
