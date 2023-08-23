Rails.application.routes.draw do
  devise_for :users
  root to: "friends#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :friends do
    resources :bookings
  end
  get "pages", to: "pages#show"
  patch 'accept/:id', to: 'bookings#accepted_booking', as: 'accept'
  patch 'refuse/:id', to: 'bookings#refused_booking', as: 'refuse'
end
