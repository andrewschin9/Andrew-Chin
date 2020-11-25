Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    post "/products" => "products#create"
    get "/products" => "products#index"
    patch "/products/update" => "products#update"
    get "/products/:id" => "products#show"
    delete "/products/:id" => "products#delete"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/cartedproducts" => "cartedproducts#index"
     
  end
end
