Rails.application.routes.draw do


  get 'uvl_hobby/index'
  get 'pop_hobby/index'
  get 'pop_hobby/search'
  get 'uvl_hobby/search'
  resources :hobby_sotrs
  resources :sotrs
  resources :hobbies
  get 'home_page/index'
  root 'home_page#index'
  resources :dlzhs
  
end
