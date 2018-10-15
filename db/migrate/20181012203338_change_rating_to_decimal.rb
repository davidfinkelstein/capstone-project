class ChangeRatingToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :rating, :decimal, precision: 2, scale: 1
  end
end
