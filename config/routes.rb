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

end
