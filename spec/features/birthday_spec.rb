feature 'Enter names' do
  scenario 'submitting names' do
    visit('/birthday')
    expect(page).to have_content "It's your birthday today!!"
  end
end
