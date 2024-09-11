Rails.application.routes.draw do
  root"users#index"
  resources :users do
    resource :profile, only: %i[new create edit update destroy]
  end

  resources :users
end
