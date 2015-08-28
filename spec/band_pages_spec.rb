require('spec_helper')

describe('path to view individual band page', :type => :feature) do
  it('adds and displays new bands') do
    visit('/bands')
    fill_in('name', :with => 'ramones')
    click_button('Add!')
    expect(page).to have_content('Ramones')
  end
end
