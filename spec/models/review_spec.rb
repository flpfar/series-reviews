require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:review) { Review.new }

  it 'author should not be empty' do
    review.valid?
    expect(review.errors[:author]).to include("can't be blank")
  end

  it 'title should not be empty' do
    review.valid?
    expect(review.errors[:title]).to include("can't be blank")
  end

  it 'title should not have more than 120 characters' do
    review.title = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti, tempore?' \
                   'Rerum perspiciatis porro ipsum amet, ullam atque'
    review.valid?
    expect(review.errors[:title]).to include('is too long (maximum is 120 characters)')
  end

  it 'title should be unique for author' do
    new_review = create(:review)
    review.author = new_review.author
    review.title = new_review.title
    review.text = 'Some text'
    review.valid?
    expect(review.errors[:title]).to include('has already been taken')
  end

  it 'text should not be empty' do
    review.valid?
    expect(review.errors[:text]).to include("can't be blank")
  end

  it 'should have at least one category' do
    review = create(:review)
    review.categories.clear
    review.valid?
    expect(review.errors[:categories]).to include("can't be blank")
  end
end
