Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root :to => "videos#index"

  get "featured/:id", to: "videos#featured", as: "featured"

  # GET REQUEST TO VIMEO API
  get '/populate' => "videos#populate"

  get '/populate_video_database' => 'videos#request_vimeo_data'
end
