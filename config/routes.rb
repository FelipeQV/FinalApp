Rails.application.routes.draw do


  devise_for :contacts
  devise_for :users
  root to: 'pages#home'

  resources :users
  resources :contacts

  resources :studios do
    resources :courses, only: [:create, :new]
  end

  resources :courses, only: [:index, :show, :update, :edit, :destroy]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# resources :users
# resources :studios do
#   resources :courses, only: [:create, :new]
# end


# resources :courses, only: [:index, :show, :updater, :edit, :destroy]
end
