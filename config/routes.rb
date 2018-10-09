Rails.application.routes.draw do
  resources :sessions, only: %i[new create destroy]
  resources :users, only: %i[show new create]
  resources :feeds, expect: :show do
    collection do
      post :confirm
    end
  end
end
