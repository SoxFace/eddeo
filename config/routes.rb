Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root :to => "videos#index"

  get "featured", to: "videos#featured", as: "featured"

  # GET REQUEST TO VIMEO API
  get '/populate' => "videos#populate"
end
