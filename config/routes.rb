Rails.application.routes.draw do
  get 'experiences/index'
  get 'experiences/show'
  get 'experiences/new'
  get 'experiences/create'
  get 'pages/home'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
