Rails.application.routes.draw do
  get 'locations/new'
  root 'homes#index'
  resources :users
  resources :sessions

  namespace:admin do
    root 'bases#index'
    resources :boards
    resources :schools
    resources :divisions
    resources :locations
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
