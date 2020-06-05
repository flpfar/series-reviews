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

  it 'title should be valid when it is present and has less than 120 characters' do
    review.title = 'This is a new review'
    review.valid?
    expect(review.errors[:title]).to be_empty
  end

  it 'title should be unique for author' do
    new_review = create(:review)
    review.author = new_review.author
    review.title = new_review.title
    review.text = 'Some text'
    review.valid?
    expect(review.errors[:title]).to include('has already been taken')
  end

  it 'image should not accept inputs different from an image URL("http"...".gif|jpg|png"), except by "default.png"' do
    review = create(:review)
    review.image = 'some_image.png'
    review.valid?
    expect(review.errors[:image]).to include('Invalid image URL. Should be like https://example.com/image.jpg')
  end

  it 'image should accept valid images URLs("http"...".gif|jpg|png")' do
    review = create(:review)
    review.image = 'http://example.com/image.png'
    review.valid?
    expect(review.errors[:image]).to be_empty
  end

  it 'image should be assigned to "default.png" if blank when saved' do
    review = create(:review)
    review.image = ''
    review.save
    expect(review.image).to eq('default.png')
  end

  it 'text should not be empty' do
    review.valid?
    expect(review.errors[:text]).to include("can't be blank")
  end

  it 'text should be valid when not empty' do
    review.text = 'This is some text.'
    review.valid?
    expect(review.errors[:text]).to be_empty
  end

  it 'categories should not be duplicated' do
    review = create(:review)
    review.categories.clear
    review.categories << Category.first
    review.categories << Category.first
    expect(review.categories.size).to be(1)
  end

  it 'should raise error if category is duplicated' do
    review = build(:review)
    some_category = Category.first
    review.categories.replace([some_category, some_category])
    expect { review.save }.to raise_error(ActiveRecord::RecordNotUnique)
  end

  it 'should have at least one category' do
    review = create(:review)
    review.categories.clear
    review.valid?
    expect(review.errors[:categories]).to include("can't be blank")
  end

  it 'categories should be valid when there is at least one category' do
    review = create(:review)
    review.categories.clear
    review.categories << Category.first
    review.valid?
    expect(review.errors[:categories]).to be_empty
  end

  it 'should be valid when fields are properly filled' do
    review = create(:review)
    expect(review.valid?).to be(true)
  end
end
