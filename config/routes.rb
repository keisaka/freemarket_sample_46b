Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  resources :users do
    resources :identifies, only: :index
    resources :profiles, only: :index
    resources :cards, only: :index
    collection do
      get 'logout'
    end
  end
end
