Rails.application.routes.draw do

  ####### PRODUCTS
  
  get "/products" => "products#index"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  ###### SUPPLIERS

  get "/suppliers" => "suppliers#index"

  get "/suppliers/:supplier_id" => "suppliers#show"

  ####### IMAGES

  get "/images" => "images#index"

  get "/images/:id" => "images#show"

  post "/images" => "images#create"

  ######## USERS

  post "/users" => "users#create"

  ######## SESSION
  post "/sessions" => "sessions#create"

  ####### ORDERS

  post "/orders" => "orders#create"

  get "/orders/" => "orders#index"

  get "/orders/:id" => "orders#show"
  
  ######## CARTED PRODUCTS

  post "/carted_products" => "carted_products#create"
  
  get "/carted_products" => "carted_products#index"


end

