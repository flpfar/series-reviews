class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :author, foreign_key: { to_table: :users }, index: true, null: false
      t.string :title, limit: 120, index: true, null: false
      t.text :text, null: false
      t.string :image
      t.datetime :created_at, null: false
    end
  end
end
