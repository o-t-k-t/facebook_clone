Rails.application.routes.draw do
  resources :sessions, only: %i[new create destroy]
  resources :users, only: %i[show new create]
  resources :feeds, only: %i[index new create]
end
