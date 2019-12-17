Rails.application.routes.draw do
  devise_for :users
  resources :books
  ### rotes.rb
  resources :users
  get 'home/top'

  get 'home/about'

  root to: 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
