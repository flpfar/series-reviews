require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:vote) { Vote.new }

  it 'user should not be empty' do
    vote.valid?
    expect(vote.errors[:user]).to include("can't be blank")
  end

  it 'review should not be empty' do
    vote.valid?
    expect(vote.errors[:review]).to include("can't be blank")
  end

  it 'should not allow user to vote more than once in the same review' do
    user = create(:user_random)
    review = create(:review)
    Vote.create(user: user, review: review)
    vote.user = user
    vote.review = review
    vote.valid?
    expect(vote.errors[:user]).to include('has already been taken')
  end
end
