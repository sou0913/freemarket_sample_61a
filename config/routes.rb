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
    
    member do
      # 出品中商品
      get :listing
      # 取引中商品
      get :in_progress
      # 売却済み商品
      get :completed
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

