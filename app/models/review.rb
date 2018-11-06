class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_one_attached :img_url
end
