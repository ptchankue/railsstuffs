
Rails.application.routes.draw do
  resources :articles
  # Define the root of your application
  root "articles#index"
end
