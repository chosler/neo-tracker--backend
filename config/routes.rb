Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments
      resources :user_tracked_objects
      resources :exoplanets
      resources :near_earth_objects
      resources :users
      post "/signup", to: "users#create"
      post "/login", to: "auth#login"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
