Rails.application.routes.draw do
  devise_for :users
  resources :home
  get 'users/:id/profile' => "users#profile"
  post "users/:id/add" => "users#add"
  get "users/:id/account" => "users#account"

  
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
