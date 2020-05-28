class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.references :user, foreign_key: true, index: true, null: false
      t.references :review, foreign_key: true, index: true, null: false
    end
    add_index :votes, %i[user_id review_id], unique: true
  end
end
