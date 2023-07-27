Rails.application.routes.draw do
  #GET /about 
  get "about", to: "about#index", as: :about
  #Root 
  root to: "main#index"
  #Registration
  get "sign_up", to: "registrations#new"
  #Registration Submit Form 
  post "sign_up", to: "registrations#create"
end
