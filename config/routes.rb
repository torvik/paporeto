Rails.application.routes.draw do

  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox
  devise_for :users
  root 'articles#index'

  resources :categories, except: :show
  resources :articles
  resources :users, except: :show

end
