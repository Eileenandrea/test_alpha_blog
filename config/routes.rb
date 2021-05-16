Rails.application.routes.draw do

  get '/articles', to: 'articles#index'
  get '/articles/new', to: 'articles#new', as: 'new_article'
  post '/articles', to: 'articles#create', as: 'create_article' 
  get '/articles/:id', to: 'articles#show', as: 'show_article'
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch '/articles/:id', to: 'articles#update', as: 'update_article'
end
