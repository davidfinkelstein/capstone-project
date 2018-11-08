class RemoveImgUrlFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :img_url, :string
  end
end
