Rails.application.routes.draw do


  root "home#show"

  get ":user_id" => "user#show", as: :user
  #get ":user_id/photos" => "user#show", as: :user

  get ":editprofile" => "editprofile#edit", as: :editprofile

  

  resources :user_data
  resources :prompts
  resources :prompts_answers
  resources :date_requests
  resources :photos
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
