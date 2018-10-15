Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do

    #User restful routes

    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    
    #Item routes

    post "/items" => "items#create"
    get "/items/:id" => "items#show"
    patch "/items/:id" => "items#update"

    #Review route

    post "/reviews" => "reviews#create"
    patch "/reviews/:id" => "reviews#update"

    #List route
    get "/lists" => "lists#index"
    post "/lists" => "lists#create"
    get "/lists/:id" => "lists#show"
    patch "/lists/:id" => "lists#update"

  end
end
