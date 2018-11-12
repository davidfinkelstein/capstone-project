json.partial! @item, partial: 'item', as: :item

json.reviews do 
  json.array! @item.reviews, partial: 'api/reviews/review', as: :review
end