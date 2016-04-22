class InitSchema < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :price
      t.string :subject
      t.string :email
      t.string :name
      t.string :phone
      t.text :content
      t.attachment :image1
      t.attachment :image2
      t.attachment :image3
      t.timestamps null: false
      t.integer :category_id
    end
    create_table :parent_categories do |t|
      t.string :name
      t.timestamps null: false
    end
    create_table :categories do |t|
      t.string :name
      t.integer :parent_category_id

      t.timestamps null: false
    end
    create_join_table :categories, :posts do |t|

    end
  end
end
