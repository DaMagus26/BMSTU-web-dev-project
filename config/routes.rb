Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root 'home_page#index'
  get 'news', to: 'pages#news'
  get 'team', to: 'pages#team'
  get 'tasks', to: 'pages#tasks'
  get 'account', to: 'pages#account'
  get 'admin/control_panel'
end
