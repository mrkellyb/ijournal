Rails.application.routes.draw do

  namespace :api do
    post "/users" => "users#create"
    # get "/users/:id" => "users#show"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/sessions" => "sessions#index"
    post "/sessions" => "sessions#create"
    get "/sessions/:id" => "sessions#show"
    patch "/sessions/:id" => "sessions#update"
    delete "/sessions/:id" => "sessions#destroy"


    delete "/actions/:id" => "actions#destroy"

    post "/login_sessions" => "login_sessions#create"

    get "/tags" => "tags#index"
  end

end
