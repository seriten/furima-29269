Rails.application.routes.draw do
  devise_for :users
  
  root 'items#index'

  resources :articles
  resources :items, only: [:index, :new, :edit, :show]

end

