Rails.application.routes.draw do
  #GET /about 
  get "about", to: "about#index", as: :about
  
  #Root 
  root to: "main#index"
  
  #Registration
  get "sign_up", to: "registrations#new"
  #Registration Submit Form 
  post "sign_up", to: "registrations#create"

  #Sign In
  get "sign_in", to: "sessions#new"
  #Sign In Submit Form
  post "sign_in", to: "sessions#create"
  
  #Logout
  delete "logout", to: "sessions#destroy"

  #Password Editing
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  #Password Reset 
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  
  #Password Resets for sending out reset email 
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  #omniauth Twitter 
  get "/auth/twitter/callback", to: "omniauth_callbacks#Twitter"
  
  resources :twitter_accounts
  

end
