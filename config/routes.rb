Rails.application.routes.draw do
  resources :hobby_sotrs
  resources :sotrs
  resources :hobbies
  get 'home_page/index'
  root 'home_page#index'
  resources :dlzhs
  
end
