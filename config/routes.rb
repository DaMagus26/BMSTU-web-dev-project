Rails.application.routes.draw do
  root 'home_page#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :teams
  put 'user/join_team', to: 'users/registrations#join_team'
  resources :posts
  get 'news', to: 'pages#news'
  get 'team', to: 'pages#team'
  get 'tasks', to: 'pages#tasks'
  get 'account', to: 'pages#account'
  get 'admin/control_panel'
end
