Rails.application.routes.draw do

  devise_for :customer, controllers: {sessions: 'public/sessions', registrations: 'public/registrations'}
  devise_for :admin, controllers: {sessions: 'admin/sessions', registrations: 'admin/registrations'}
  root :to => 'public/homes#top'
  get "/about" => "public/homes#about"
  scope module: :public do
    resources :items, only: [:index, :show]
    resources :addresses, only: [:index, :edit, :create, :update, :destroy]
    resources :order, only: [:new, :index, :show]
    resources :cart_items, only: [:index, :update, :create, :destroy]
      delete "/cart_items/destroy_all" => "cart_items#destroy_all"
  end

  namespace :admin do
  	resources :items, only: [:index, :new, :create, :show, :edit, :update]
  	resources :genres, only: [:index, :create, :edit, :update]
  	resources :customers, only: [:index, :show, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
