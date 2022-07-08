Rails.application.routes.draw do
  devise_for :users, skip: %i[registrations sessions passwords]
  devise_scope :user do
    post 'users/sign_in', to: 'sessions#create', defaults: { format: :json }
    delete 'users/sign_out', to: 'sessions#destroy', defaults: { format: :json }
    post 'users/password', to: 'devise/passwords#create', defaults: { format: :json }
    patch 'users/password', to: 'devise/passwords#update', defaults: { format: :json }
    post 'users', to: 'registrations#create', defaults: { format: :json }
    patch 'users', to: 'registrations#update', defaults: { format: :json }
    delete 'users', to: 'registrations#destroy', defaults: { format: :json }
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources :reservations
  # resources :lawyers

  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :reservations, except: :show
      resources :lawyers
    end
  end

  # Defines the root path route ("/")
  # root "lawyers#index"
end
