Rails.application.routes.draw do
  root to: 'users#new'
  resources :blogs
  resources :users, only: [:new, :create, :edit, :update, :show ]
  resources :sessions, only: [:new, :create, :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
