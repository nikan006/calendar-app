Rails.application.routes.draw do
  devise_for :users
  get "events/index"
  root to: "events#index"
  resources :events do
    resources:comments, only: :create
  end
  resources :users, only: :show
end
