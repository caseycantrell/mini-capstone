# Image.create!(
#   url: "https://m.media-amazon.com/images/I/61KmQFt-1+S._AC_SL1500_.jpg",
#   product_id: 18
# )

Image.create!([
  {
    url: "https://pbs.twimg.com/media/Dw-FKf6WkAAWcKE.jpg",
    product_id: 11
  },
  {
    url: "https://images.fineartamerica.com/images-medium-large-5/skateboarding-t-rex-chris-macdonald.jpg",
    product_id: 13
  },
  {
    url: "https://assuredsecurityshredding.co.uk/wp-content/uploads/2013/04/Dell_Desktop_Computer_in_school_classroom.jpg",
    product_id: 9
  },
  {
    url: "https://i.ytimg.com/vi/TMMBRv7Jd_A/maxresdefault.jpg",
    product_id: 12
  },
  {
    url: "https://4.imimg.com/data4/BC/XT/MY-11130750/screw-driver-500x500.png",
    product_id: 19
  },
  {
    url: "https://www.topgear.com/sites/default/files/cars-car/image/2020/07/dsc09285.jpg",
    product_id: 10
  }
])





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


# CartedProduct.create!([
#   {user_id: 1, product_id: 13, quantity: 1},
#   {user_id: 1, product_id: 11, quantity: 1},
#   {user_id: 2, product_id: 12, quantity: 1}
# ])


# Order.create!([
#   {user_id: 1}
# ])