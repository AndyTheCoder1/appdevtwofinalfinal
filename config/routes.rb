Rails.application.routes.draw do


  root "home#show"

  get "/reveal/:owner_id" => "user_data#revealer", as: "reveal"

  get "/add_photo" => "photo#add", as: "addphoto"

  get "/updateprofile" => "user#update", as: "editprofile"

  get "/explore" => "user#explore", as: "explore"

  

  

  resources :user_data
  resources :prompts
  resources :prompts_answers
  resources :date_requests
  resources :photos
  devise_for :users

    get ":user_id" => "user#show", as: :user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
