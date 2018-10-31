Rails.application.routes.draw do
  resources :votes
  resources :users
  resources :tags
  resources :revisions
  resources :pagetags
  resources :pages
  resources :imagestatuses
  resources :images
  resources :forumthreads
  resources :forumposts
  resources :forumcategories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
