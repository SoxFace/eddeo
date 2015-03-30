Rails.application.routes.draw do
  get 'views/index'

  get 'views/new'

  post 'views', to: "views#create"

  devise_for :admins
  devise_for :users
  root :to => "videos#index"

  get "featured/:id", to: "videos#featured", as: "featured"

  # GET REQUEST TO VIMEO API
  get '/populate' => "videos#populate"

  get '/populate_video_database' => 'videos#request_vimeo_data'

  # resource :views
end
