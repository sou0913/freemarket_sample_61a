Rails.application.routes.draw do
  devise_for :users
  resources :tests, only: :index 
  resources :items
  root to: "tests#index"
end
