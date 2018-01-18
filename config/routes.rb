Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#home'

  resources :users


  resources :studios do
  resources :courses, only: [:create, :new]
  end

  resources :courses, only: [:index, :update, :show, :edit, :destroy] do
    resources :reviews, only: [:index, :new, :create, :destroy]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
