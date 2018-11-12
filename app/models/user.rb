class User < ApplicationRecord
  has_many :reviews
  has_secure_password
  validates :email, presence: true, uniqueness: true

  def birthday_formatted
    birthday.to_date
    # strftime("%m/%d/%Y")
  end

  def created_at_formatted
    created_at.strftime("%m/%d/%Y")
  end
end
