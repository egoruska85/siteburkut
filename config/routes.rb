Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'login/index'
  devise_for :users

  resources :products do
    resources :comments
  end

  root      'home#index'
resources :home, only: [:index, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
