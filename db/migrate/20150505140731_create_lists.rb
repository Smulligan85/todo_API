class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :user, index: true
      t.string :title
      t.boolean :private, default: false


      t.timestamps null: false
    end
    add_foreign_key :lists, :users
    add_foreign_key :lists, :items
  end
end
