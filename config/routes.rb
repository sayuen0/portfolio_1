Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  get 'questions/index'
  get 'articles/index'
  get 'articles/show'
  get 'articles/new'
  get 'articles/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "greets#hello"
  get '/contact' => "greets#contact"
  get "/company" => "greets#company"
  get '/form' => "greets#form"

  resources :members
  resources :questions,:only => [:index, :show]
  resource :session, only: [:create, :destroy]
  resources :posts
end
