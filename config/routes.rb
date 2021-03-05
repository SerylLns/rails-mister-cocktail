Rails.application.routes.draw do

  get "/find", to: "cocktails#find"

  resources :cocktails, only: [:index, :show, :new, :create,] do
    resources :doses, only: [ :new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :doses, only: [:destroy]

end
