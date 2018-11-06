json.id user.id
json.name user.name
json.email user.email
json.birthday user.birthday
json.created_at user.created_at

json.reviews do 
  json.array! user.reviews, partial: 'api/reviews/review', as: :review
end