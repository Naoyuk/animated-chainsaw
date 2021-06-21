Rails.application.routes.draw do
  get '/api/v1/posts', to: 'posts#index'
  get '/api/v1/posts/:id', to: 'posts#show'
  post '/api/v1/posts', to: 'posts#create'
  put '/api/v1/posts/:id', to: 'posts#update'
  delete '/api/v1/posts/:id', to: 'posts#destroy'
end
