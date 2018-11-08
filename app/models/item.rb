class Item < ApplicationRecord
  has_many :reviews
  has_one_attached :img_url

  def avg_rating
    reviews.average(:rating)
  end
end
