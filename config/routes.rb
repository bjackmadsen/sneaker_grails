Rails.application.routes.draw do
  root :to => 'brands#index'

  resources :brands, :except => [:edit]

  resources :styles, :except => [:index]
end
