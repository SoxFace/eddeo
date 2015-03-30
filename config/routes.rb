Rails.application.routes.draw do

  # Sends ajax post to views model
  post 'views', to: "views#create"

  devise_for :admins
  devise_for :users
  root :to => "videos#landing"

  get "/index", to: "videos#index", as: "index"

  get "featured/:id", to: "videos#featured", as: "featured"

  # GET REQUEST TO VIMEO API
  get '/populate' => "videos#populate"

  get '/populate_video_database' => 'videos#request_vimeo_data'

end
