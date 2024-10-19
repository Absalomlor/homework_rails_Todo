Rails.application.routes.draw do
  get "home/index"
  resources :messages
  resources :rooms
  resources :tasks do
    member do
      get :complete
    end
    collection do
      get :completed
    end
  end
  root 'tasks#index'
end