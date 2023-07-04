Rails.application.routes.draw do
  root 'posts#index'
  
  get '/posts', to: "posts#index"
  get '/posts/new', to: "posts#new", as: "new_post"
  get '/posts/:id', to: "posts#show", as: "post"
  get '/posts/:id/edit', to: "posts#edit", as: "edit_post"
  post '/posts', to: "posts#create", as: "create_post"
  put '/posts/:id', to: "posts#update", as: "update_post"
  delete '/posts/:id', to: "posts#destroy", as: "delete_post"
  # resources :posts

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
end
