json.id review.id
json.user_id review.user_id
json.item_id review.item_id
json.rating review.rating
json.comment review.comment
json.img_url rails_blob_url(review.img_url) if review.img_url.attachment