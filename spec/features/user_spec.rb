require 'rails_helper'

# rubocop:disable Metrics/BlockLength
RSpec.feature 'Users', type: :feature do
  before(:all) { create(:review) }
  before(:each) { visit root_path }

  def fill_and_click(field, data)
    fill_in field, with: data
    find("input[type='submit']").click
  end

  it 'login successfully' do
    create(:user, name: 'username')
    fill_and_click('session_username', 'username')
    expect(page).to have_content('LOGOUT')
  end

  it 'login fails when user is not signed up' do
    fill_and_click('session_username', 'username')
    expect(page).to have_content('Login failed')
  end

  it 'are redirected to index page when login is sucessfull' do
    create(:user, name: 'username')
    fill_and_click('session_username', 'username')
    expect(page).to have_current_path(root_path)
  end

  it 'are redirected to login page when trying to access any page without signing in' do
    visit new_review_path
    expect(page).to have_current_path(signin_path)
  end

  it 'signup successfully' do
    visit signup_path
    fill_and_click('user_name', 'username')
    expect(page).to have_content('User was successfully created')
  end

  it 'are logged in and redirected to index page when signup is sucessfull' do
    visit signup_path
    fill_and_click('user_name', 'username')
    expect(page).to have_current_path(root_path)
    expect(page).to have_content('USERNAME')
  end

  it 'signup fails when username was already taken' do
    create(:user, name: 'username')
    visit signup_path
    fill_and_click('user_name', 'username')
    expect(page).to have_content('Name has already been taken')
  end
end
# rubocop:enable Metrics/BlockLength
