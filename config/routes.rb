Rails.application.routes.draw do

  get 'admin' => 'home_page#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  get 'admin/index'
  get 'sessions/new'  
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'home_page/logout'  
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
