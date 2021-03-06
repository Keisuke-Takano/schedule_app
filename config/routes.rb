Rails.application.routes.draw do

  get "/" => "posts#index"
  get "/new" => "posts#new"
  post "/create" => "posts#create"
  get "/:id" => "posts#show"
  get "/:id/edit" => "posts#edit"
  post "/:id/update" => "posts#update"
  post "/:id/destroy" => "posts#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
