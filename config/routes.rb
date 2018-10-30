Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :qualifications
  resources :transactions
  resources :offers
  resources :photos
  resources :products
  resources :materials
  resources :measurement_units
  resources :units
  resources :users
  resources :towns
  resources :cities
  resources :states
  resources :countries
  resources :type_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
