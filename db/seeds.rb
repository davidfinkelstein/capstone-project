# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!([
  {name: "David", email: "david@gmail.com", password_digest: "pwd", birthday: "07/31/1991"},
  {name: "Kevin", email: "kevin@gmail.com", password_digest: "pwd", birthday: "02/28/1990"}
])

Item.create!([
  {list_id: 1, name: "2018 13' Macbook Pro", price: 1299, description: "2.3GHz dual-core 7th-generation Intel Core i5 processor. Turbo Boost up to 3.6GHz. Intel Iris Plus Graphics 640. 128GB 2133MHz LPDDR3 memory. 128GB SSD storage1. Retina display. Two Thunderbolt 3 ports", website_url: "https://www.apple.com/shop/buy-mac/macbook-pro", amazon_url: "https://www.amazon.com/Apple-MacBook-Display-MPXR2LL-Version/dp/B071JNRK1V/ref=sr_1_3?s=electronics&ie=UTF8&qid=1538081796&sr=1-3&keywords=macbook+pro+2018+13+inch", img_url: "https://sgfm.elcorteingles.es/SGFM/dctm/MEDIA03/201807/13/00115215414143____1__640x640.jpg"},
  {list_id: 2, name: 'Spalding NBA "The Beast" Portable Basketball System - 60" Glass Backboard', price: 1099.99, description: "2.3GHz dual-core 7th-generation Intel Core i5 processor. Turbo Boost up to 3.6GHz. Intel Iris Plus Graphics 640. 128GB 2133MHz LPDDR3 memory. 128GB SSD storage1. Retina display. Two Thunderbolt 3 ports", website_url: "https://www.spalding.com/shop-by-sport/basketball-hoops/the-beast-portable-basketball-hoop-system---60%22-glass/EQ.74560.0.0.0.0.html", amazon_url: "https://www.amazon.com/Spalding-Beast-Portable-Basketball-System/dp/B001AQUBR0/ref=sr_1_4?s=electronics&ie=UTF8&qid=1538094567&sr=1-4&keywords=basketball+hoop", img_url: "https://www.competitiveedgeproducts.com/thumbnail.asp?file=assets/images/74560.jpg&maxx=300&maxy=0"}
])

Review.create!([
  {user_id: 2, item_id: 1, rating: 4.5, comment: "This item saved my marriage", img_url: "http://sports.hivefly.com/wp-content/uploads/spalding-nba-the-beast-d.jpg"},
  {user_id: 1, item_id: 1, rating: 5.0, comment: "I love this basketball hoop!", img_url: "http://www.fitness-sports.co.uk/images/spalding-gold-portable.jpg"},
  {user_id: 1, item_id: 2, rating: 4.0, comment: "This laptop is great for my bootcamp!", img_url: "https://i.ebayimg.com/00/s/NjgzWDEwMjQ=/z/jdkAAOSw3cZbYZ2t/$_86.JPG"}
])

List.create!([
  {name: "Laptops", category: "Products"},
  {name: "Basketball", category: "Products"}
])