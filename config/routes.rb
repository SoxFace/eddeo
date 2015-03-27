Rails.application.routes.draw do
  devise_for :users
  root :to => "videos#index"
  get '/populate' => "videos#populate"
end
