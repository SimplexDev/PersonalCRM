Rails.application.routes.draw do
  root "contacts#index"

  devise_for :users

  namespace :api do
    namespace :v1 do

      resources :contacts, only: [:index, :show] do
        resources :notes, only: [:index, :create, :edit, :update]
      end

      resources :users, only: [:index, :show] do
        resources :contacts, only: [:index]
      end

      resources :notes, only: [:index, :show, :create, :edit]
    end
  end

  resources :contacts, only: [:index, :show, :create, :new, :edit, :update, :destroy]
  resources :users, only: [:index, :destroy]
  resources :notes, only: [:destroy, :edit, :update]

  get "*path", to: 'contacts#index'
end
