Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

#  get 'pins/show'
#  get 'pins', to: 'pins#show'
#  get 'pins/new'
#  get 'pins/edit'
  get 'pages/index'
  get 'pages/about'
  get 'pages/contact'
  resources :pins

  get '/pins', to: 'pins#show'  

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
