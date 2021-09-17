# Image.create!(
#   url: "https://m.media-amazon.com/images/I/61KmQFt-1+S._AC_SL1500_.jpg",
#   product_id: 18
# )

# Image.create!(
#   url: "https://www.distrelec.biz/Web/WebShopImages/landscape_large/2-/01/30110722-01.jpg",
#   product_id: 18
# )
# Category.create!([
#   {name: "Household Items"},
#   {name: "Super Cool"},
#   {name: "Food"},
# ])

# ProductCategory.create!([
#   {product_id: 19, category_id: 1},
#   {product_id: 9, category_id: 1},
#   {product_id: 18, category_id: 1},
#   {product_id: 13, category_id: 2},
#   {product_id: 9, category_id: 2},
#   {product_id: 11, category_id: 2},
#   {product_id: 10, category_id: 2},
#   {product_id: 12, category_id: 3},
#   {product_id: 11, category_id: 3}
# ])


CartedProduct.create!([
  {user_id: 1, product_id: 13, quantity: 1},
  {user_id: 1, product_id: 11, quantity: 1},
  {user_id: 2, product_id: 12, quantity: 1}
])


Order.create!([
  {user_id: 1}
])