Rails.application.routes.draw do
  devise_for :admins
  root :to => 'admin#homes'
  namespace :admin do
  	resources :items, only: [:index, :new, :create, :show, :edit, :update]
  	resources :genres, only: [:index, :create, :edit, :update,]
  	resources :customers, only: [:index, :show, :edit, :update,]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
