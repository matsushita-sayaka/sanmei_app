Rails.application.routes.draw do
  
  devise_for :users
  resources :users, :only => [:show, :edit, :update, :destroy]
  
  resources :staffs
  resources :teams
  
  get 'meishikis/test' => 'meishikis#test'
  post 'meishikis/create' => 'meishikis#create'
  root 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
