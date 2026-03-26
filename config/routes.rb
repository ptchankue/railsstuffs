Rails.application.routes.draw do
  root "home#index"
  get "about", to: "home#about", as: :about
  get "demo/time", to: "demo#time", as: :demo_time

  resources :articles
end
