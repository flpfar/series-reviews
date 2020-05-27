require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }
  it 'name should not be empty' do
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end
  it 'name should be unique' do
    existing_user = create(:user)
    user.name = existing_user.name
    user.valid?
    expect(user.errors[:name]).to include('has already been taken')
  end
  it 'name should not have more then 50 characters' do
    user.name = 'abcdefghijklmnopqrstuvxwyzabcdefghijklmnopqrstuvxwyz'
    expect(user.errors[:name]).to include('is too long')
  end
  it 'name should not have less than 3 characters' do
    user.name = 'abcdefghijklmnopqrstuvxwyzabcdefghijklmnopqrstuvxwyz'
    expect(user.errors[:name]).to include('is too short')
  end
end
