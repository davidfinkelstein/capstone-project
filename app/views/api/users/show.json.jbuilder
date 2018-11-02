json.partial! @user, partial: 'user', as: :user

json.reviews do 
  json.array! @user.reviews, partial: 'api/reviews/review', as: :item
end