Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'brands#index'})
  match('brands', {:via => :get, :to => 'brands#index'})
  match('brands/new', {:via => :get, :to => 'brands#new'})
  match('brands', {:via => :post, :to => 'brands#create'})
  match('brands/:id', {:via => :get, :to => 'brands#show'})
  match('brands/:id', {:via => :delete, :to => 'brands#destroy'})
end
