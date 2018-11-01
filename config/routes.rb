Rails.application.routes.draw do
  resources :restaurants, only: [:show, :new, :create, :index] do
    resources :reviews, only: [:show, :new, :create]
  end
end
