Rails.application.routes.draw do
  devise_for :users
  root 'home_page#index'
  get 'news', to: 'pages#news'
  get 'team', to: 'pages#team'
  get 'tasks', to: 'pages#tasks'
  get 'account', to: 'pages#account'

  get 'moderator/users'
  get 'moderator/teams'
  get 'moderator/posts'
  get 'admin/control_panel'
end
