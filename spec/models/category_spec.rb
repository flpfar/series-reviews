require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { Category.new }

  it 'name should not be empty' do
    category.valid?
    expect(category.errors[:name]).to include("can't be blank")
  end

  it 'name should not have more than 20 characters' do
    category.name = 'abcdefghijklmnopqrstuvxwy'
    category.valid?
    expect(category.errors[:name]).to include('is too long (maximum is 20 characters)')
  end

  it 'name should be unique' do
    existing_category = create(:category)
    category.name = existing_category.name
    category.valid?
    expect(category.errors[:name]).to include('has already been taken')
  end

  it 'priority should not be empty' do
    category.valid?
    expect(category.errors[:priority]).to include("can't be blank")
  end

  it 'priority should be unique' do
    existing_category = create(:category)
    category.priority = existing_category.priority
    category.valid?
    expect(category.errors[:priority]).to include('has already been taken')
  end
end
