Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  } 

  # get "logout" => "users#logout"
  resources :users do
    collection do
      get:logout
      get "new_address"
      get "new_card"
      get "complete"
    end
  end

  resources :users, only: [:show, :edit] do
    resources :private_informations, only: [:new]
    resources :cards, only: [:index]
  end

  resources :items do
    resources :purchases
  end
  resources :tests, only: [:index, :new, :show]

  root to: "items#index"

end

