Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { edit: 'account' }, defaults: { format: :json },
                               controllers: { registrations: 'registrations', sessions: 'sessions' }
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
