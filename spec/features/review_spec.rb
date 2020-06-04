require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.feature 'Reviews', type: :feature do
  before(:all) do
    create(:review)
    create_list(:category, 10)
  end

  before(:each) do
    @user = create(:user, name: 'username')
    visit root_path
    fill_in 'session_username', with: 'username'
    find("input[type='submit']").click
  end

  def fill_fields(title: '', image: '', text: '', categories: [])
    fill_in 'review_title', with: title
    fill_in 'review_image', with: image
    fill_in 'review_text', with: text
    categories.each { |c| check "review_category_ids_#{c}" }
  end

  describe 'creations' do
    before(:each) { visit new_review_path }
    it 'are successfully when fields are properly filled' do
      fill_fields(title: 'New Review', image: 'http://example.com/image.png', text: 'Text', categories: [1, 3])
      find("input[type='submit']").click
      expect(page).to have_content('Review was successfully created.')
    end

    it 'show error when no category is selected' do
      fill_fields(title: 'New Review', image: 'http://example.com/image.png', text: 'Text')
      find("input[type='submit']").click
      expect(page).to have_content("Categories can't be blank")
    end

    it 'show errors for all required fields that are not provided' do
      find("input[type='submit']").click
      expect(page).to have_content("Title can't be blank")
      expect(page).to have_content("Categories can't be blank")
      expect(page).to have_content("Text can't be blank")
    end
  end

  describe 'updates' do
    before(:each) do
      visit new_review_path
      fill_fields(title: 'New Review', image: 'http://example.com/image.png', text: 'Text', categories: [1, 3])
      find("input[type='submit']").click
      visit edit_review_path(@user.reviews.first)
    end
    it 'are successfully done when fields are properly filled' do
      fill_fields(title: 'Review Changed', image: '', text: 'Other Text', categories: [2, 4])
      find("input[type='submit']").click
      expect(page).to have_content('Review was successfully updated.')
    end
    it 'should fail when fields are not properly filled' do
      fill_fields(title: '', image: '', text: 'Other Text')
      find("input[type='submit']").click
      expect(page).to have_content('Review was NOT successfully updated.')
    end
    it 'should be redirected to review show page when successful' do
      fill_fields(title: 'Review Changed', image: '', text: 'Other Text', categories: [2, 4])
      find("input[type='submit']").click
      expect(page).to have_current_path(review_path(@user.reviews.first))
    end
    it 'should contain the edited data in show page when successful' do
      fill_fields(title: 'Review Changed Title', image: '', text: 'Other Text', categories: [2, 4])
      find("input[type='submit']").click
      expect(page).to have_content('Review Changed Title')
    end
  end
end
# rubocop:enable Metrics/BlockLength
