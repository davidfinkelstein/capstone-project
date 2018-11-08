json.id item.id
json.list_id item.list_id
json.name item.name
json.price item.price
json.description item.description
json.website_url item.website_url
json.amazon_url item.amazon_url
json.avg_rating item.avg_rating || 0
json.img_url rails_blob_url(item.img_url) if item.img_url.attachment

json.reviews do 
  json.array! item.reviews, partial: 'api/reviews/review', as: :review
end