Rails.application.routes.draw do

  # Static Pages

  root 'static_pages#home'

  match '/help',     to: 'static_pages#help',    via: 'get'

  match '/about',    to: 'static_pages#about',   via: 'get'

  match '/contact',  to: 'static_pages#contact', via: 'get'

  match '/admin',    to: 'static_pages#admin',   via: 'get'

  # Users

  resources :users do
    member do
      get :following, :followers
    end
  end

  match '/sign_up',  to: 'users#new',            via: 'get'

  resources :relationships, only: [:create, :destroy]

  # Sessions

  resources :sessions, only: [:new, :create, :destroy]

  match '/sign_in',  to: 'sessions#new',         via: 'get'
  match '/sign_out', to: 'sessions#destroy',     via: 'delete'

  # Microposts

  resources :microposts, only: [:create, :destroy]

end
