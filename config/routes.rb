Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: ['show']
  resources :groups do
    resources :bookings, only: ['new', 'create', 'show']
  end
  resources :bookings, only: ['destroy', 'edit', 'update']
end
