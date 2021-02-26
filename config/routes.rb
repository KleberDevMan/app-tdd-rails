Rails.application.routes.draw do
  get 'home/index'
  get 'home/form'
  resources :animals


end
