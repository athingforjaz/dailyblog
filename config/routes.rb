Rails.application.routes.draw do
  get 'notes/index'
  get 'notes/edit'
  # get 'blogs/index'
  # get 'blogs/new'
  # get 'blogs/edit'
  # get 'blogs/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  post "/notes/create" => "notes#create"

  post "/blogs/create" => "blogs#create"

  resources :blogs

  get "/jasmine" => "blogs#kitten"

  resources :notes
  
end
