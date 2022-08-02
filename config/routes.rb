Rails.application.routes.draw do
  root 'home#home_page'
  get "/home/home_page"
  # get "/home/:id", to: "home#show"
  # get "/home/new", to: "home#new"
  resources :home

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
