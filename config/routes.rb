Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  } 
  resources :users, only: [:show]
  resources :items do
    resources :purchases
  end
  resources :tests, only: [:index, :new, :show]

  root to: "items#index"
end
