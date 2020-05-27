class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 50
      t.index :name

      t.timestamps
    end
  end
end
