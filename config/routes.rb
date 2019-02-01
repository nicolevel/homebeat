Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'
  devise_for :users
  root to: 'pages#home'

  resources :items
  # get 'items', to 'item#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
