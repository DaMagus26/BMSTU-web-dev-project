Rails.application.routes.draw do

  # Scoring system
  get 'scores/index'
  get 'scores/new_final'
  get 'scores/new_semi'
  get 'scores/create_final'
  get 'scores/create_semi'
  get 'scores/update_final'
  get 'scores/update_semi'

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
