Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users do
    resources :dashboards, only: ['index']
  end
  resources :groups do # only: ['index', 'new', 'create']
    resources :bookings, only: ['new', 'create']
  end
  resources :bookings, only: ['destroy']
end
