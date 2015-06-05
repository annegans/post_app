require 'rails_helper'

describe 'adding a post' do

  it 'a user can add a post to the site' do
    visit '/'
    click_link 'Add a post'
    fill_in 'Name', with: 'Laura'
    fill_in 'Content' , with: 'I have been having a lot of ...'
    click_button 'Submit'

    expect(page).to have_content 'laura'
  end
end