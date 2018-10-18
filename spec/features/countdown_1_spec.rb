feature 'Testing the countdown pages' do
  scenario 'Loads the correct content for 1 day out' do
    visit('/')
    fill_in :day, with: "19"
    fill_in :month, with: "10"
    fill_in :year, with: "2018"
    click_button 'Submit'
    expect(page).to have_content 'How exciting'
  end

  scenario 'Loads the correct content for multiple days out' do
    visit('/')
    fill_in :day, with: "20"
    fill_in :month, with: "10"
    fill_in :year, with: "2018"
    click_button 'Submit'
    expect(page).to have_content 'There are '
  end
end
