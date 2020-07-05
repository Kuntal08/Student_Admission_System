Rails.application.routes.draw do

  root 'homes#index'
  resources :users
  resources :sessions
  resources :seekers

  namespace:admin do
    root 'bases#index'
    resources :boards
    resources :schools
    resources :divisions
    resources :locations
    resources :approvals, only: [:index, :edit, :update]
    get "/approve/:id", to:"approvals#approve", as:'approve'
    get "/reject/:id", to:"approvals#reject", as:'reject'

  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
