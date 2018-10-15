class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string :name
      t.decimal :price, precision: 11, scale: 2
      t.text :description
      t.string :website_url
      t.string :amazon_url
      t.string :img_url

      t.timestamps
    end
  end
end
