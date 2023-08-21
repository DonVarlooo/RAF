class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :postal_address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
