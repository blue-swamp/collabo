Rails.application.routes.draw do
  root :to => 'homes#top'
  get '/top' => 'homes#top'
  get 'articles/new' 
  post '/articles' => 'articles#create'
  get '/articles' => 'articles#index'
  get '/articles/:id' => 'articles#show', as: 'article'
  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  patch '/articles/:id' => 'articles#update', as: 'update_article'
  delete '/articles/:id' => 'articles#destroy', as: 'destroy_article'
  
end
