Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

#  get 'pins/show'
#  get 'pins', to: 'pins#show'
#  get 'pins/new'
#  get 'pins/edit'
  get 'pages/index'
  get 'pages/about'
  get 'pages/contact'
  resources :pins do
    get :tus_pins, on: :member
    get :dar_like, on: :member
  end

  get '/pins', to: 'pins#show'  

  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
