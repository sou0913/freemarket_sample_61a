Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: "users/sessions",
  } 

  # get "logout" => "users#logout"
  resources :users do
    collection do
      get:logout
    end
  end

  resources :users, only: [:show, :edit] do
    resources :private_informations, only: [:new]
  end

  resources :items do
    resources :purchases
  end
  resources :tests, only: [:index, :new, :show]

  root to: "items#index"

end