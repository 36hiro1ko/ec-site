EcSite::Application.routes.draw do

  controller :cart do
    match 'cart/add' => 'cart#add', :as => 'add_cart', :via => 'put'
    match 'cart/delete' => 'cart#delete', :as => 'delete_cart', :via => 'put'
    match 'cart/show' => 'cart#show', :as => 'show_cart', :via => 'get'
  end
  
  namespace :admin do
    resources :items
  end

  resources :items, :only =>[:index, :show]

  root :to => "welcome#index"
  devise_for :users
  
  


end
