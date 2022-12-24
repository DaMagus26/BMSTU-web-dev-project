Rails.application.routes.draw do

  # Scoring system
  get 'scores/index'
  get 'scores/create', to: 'scores#create'

  root 'home_page#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :teams
  post 'teams/add_to_team'
  delete 'teams/kick/:id', to: 'teams#kick', as: :teams_kick
  resources :posts

  resources :scores
  get 'news', to: 'pages#news'
  get 'team', to: 'pages#team'
  get 'tasks', to: 'pages#tasks'
  get 'account', to: 'pages#account'
  get 'admin/control_panel'
end
