require 'rails_helper'

RSpec.feature 'Votes', type: :feature do
  before(:all) { create(:review) }

  before(:each) do
    @user = create(:user, name: 'username')
    visit root_path
    fill_in 'session_username', with: 'username'
    find("input[type='submit']").click
    visit review_path(Review.first)
    @vote_link = find('.vote-link')
    @vote_link.click
  end

  it 'are successfully saved when clicking on "Vote" in a review' do
    expect(page).to have_content('Vote saved!')
  end

  it 'links are changed to "Unvote" after clicking on "Vote" in a review' do
    expect(@vote_link).to have_content('Unvote')
  end

  it 'are successfully removed when clicking on "Unvote" in a review' do
    click_link 'Unvote'
    expect(page).to have_content('Vote removed!')
  end

  it 'links are changed to "Vote" after clicking on "Unvote" in a review' do
    click_link 'Unvote'
    expect(@vote_link).to have_content('Vote')
  end
end
