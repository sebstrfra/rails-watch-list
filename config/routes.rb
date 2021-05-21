Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "restaurants", to: "restaurants#index"

  # get 'lists', to: 'lists#index'
  # get 'lists/new', to: 'lists#new'
  # post 'lists', to: 'lists#create'
  # get 'lists/:id', to: 'lists#show', as: :list

  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: :bookmarks
  # post 'lists/:id/bookmarks', to: 'bookmarks#create'

  root to: 'lists#index'

  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: :destroy

end
