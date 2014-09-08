EcSite::Application.routes.draw do
  namespace :admin do
    resources :items
  end

  resources :items, :only =>[:index, :show]

  root :to => "welcome#index"
  devise_for :users
  
  


end
