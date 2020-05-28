class CreateCategoriesReviewsJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :categories, :reviews
    add_index :categories_reviews, :category_id
    add_index :categories_reviews, :review_id
    add_index :categories_reviews, %i[category_id review_id], unique: true
  end
end
