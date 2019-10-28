Rails.application.routes.draw do
  devise_for :users, skip: :all,
  controllers: {
    registrations:      'users/registrations',
  }

  devise_scope :user do
    # registration
    get    'signup',                to: 'users/registrations#index',   as: :start_user_registration
    get    'signup/registration',   to: 'users/registrations#new',     as: :new_user_registration
    patch  'users',                 to: 'users/registrations#update',  as: :user_registration
    put    'users',                 to: 'users/registrations#update'
    delete 'users',                 to: 'users/registrations#destroy'
    post   'signup/registration',   to: 'users/registrations#create',  as: :create_user_registration
  end

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tests, only: :index
  root to: "tests#index"
end
