json.partial! @user, partial: 'user', as: :user

json.reviews do 
  json.array! @user.reviews.each do |review|
    json.partial! "api/reviews/review", review: review
    json.item_name review.item.name
  end
end