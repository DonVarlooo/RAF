Rails.application.routes.draw do
  devise_for :users
  root to: "friends#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :friends do
    resources :bookings, only: [:new, :create, :index, :destroy, :show]
  end
end
