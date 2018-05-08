Rails.application.routes.draw do
  root "contacts#index"

  devise_for :users

  namespace :api do
    namespace :v1 do

      resources :contacts, only: [:index, :show] do
        resources :notes, only: [:index, :create]
      end

      resources :users, only: [:index, :show] do
        resources :contacts, only: [:index]
      end

      resources :notes, only: [:index, :show, :create]
    end
  end

  resources :contacts, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  resources :users, only: [:index, :destroy]
  resources :notes, only: [:destroy]

  # get "map", to: 'maps#index'
  get "*path", to: 'contacts#index'
end
