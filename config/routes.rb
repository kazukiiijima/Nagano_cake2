Rails.application.routes.draw do
  get 'search/search'
  devise_for :customer
  devise_for :admins
  root :to => 'public/homes#top'
  get "/about" => "public/homes#about"
  resources :items, only: [:index, :show]
  resources :addresses, only: [:index, :edit, :create, :update, :destroy]
  resources :order, only: [:new, :index, :show]

  namespace :admin do
  	resources :items, only: [:index, :new, :create, :show, :edit, :update]
  	resources :genres, only: [:index, :create, :edit, :update]
  	resources :customers, only: [:index, :show, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
