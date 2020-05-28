class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false, limit: 20
      t.integer :priority, null: false, index: { unique: true }
      t.index :name, unique: true
    end
  end
end
