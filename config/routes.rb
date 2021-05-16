Rails.application.routes.draw do
  resources :articles, only: [:show]
  get '/articles', to: 'articles#index'
end
