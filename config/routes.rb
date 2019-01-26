Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "greets#hello"
  get '/news' => "greets#news"
  get '/contact' => "greets#contact"
  get '/company' => "greets#company"
  get '/form' => "greets#form"

  resources :members
end
