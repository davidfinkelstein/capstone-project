class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :rating
      t.text :comment
      t.string :img_url

      t.timestamps
    end
  end
end