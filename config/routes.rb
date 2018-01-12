Rails.application.routes.draw do

  namespace :dashboard do
    authenticated :student do
      resources :subjects, module: "student"
    end
    authenticated :manager do
      resources :subjects, module: "manager"
    end
root to: "dashboard#index"
    end






  devise_for :contacts
  devise_for :users

  devise_for :students
  devise_for :managers

  root to: 'dashboard/dashboard#index'

  resources :users
  resources :contacts
  resources :reviews

  resources :studios do
  resources :courses, only: [:create, :new]
  end

  resources :courses, only: [:index, :update, :show, :edit, :destroy] do
    resources :reviews, only: [:index, :new, :create, :destroy]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
