Rails.application.routes.draw do
  # get 'home/index'

  resources :entries do
    resources :reviews
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
