class RemoveImgUrlFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :img_url, :string
  end
end
