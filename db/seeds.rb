Supplier.create(
  name: "The Supply Guys",
  email: "thesupplyguys@gmail.com",
  phone_number: "1-800-555-5555"
)

Supplier.create(
  name: "Supplies R' Us",
  email: "suppliesrus@gmail.com",
  phone_number: "1-800-SUPPLIES"
)

Product.create(
  name: "Hammer", 
  price: 5, 
  image_url: "", 
  description: "You use this to smack nails.",
  supplier_id: 1
)


Product.create(
  name: "Screwdriver",
  price: 100,
  image_url: "",
  description: "You use this to screw things together.",
  supplier_id: 2
)

