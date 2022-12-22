Rails.application.routes.draw do
  root 'home_page#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :teams
  post 'teams/add_to_team'
  delete 'teams/kick/:id', to: 'teams#kick', as: :teams_kick
  resources :posts
  get 'news', to: 'pages#news'
  get 'team', to: 'pages#team'
  get 'tasks', to: 'pages#tasks'
  get 'account', to: 'pages#account'
  get 'admin/control_panel'
end
