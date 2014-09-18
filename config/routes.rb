Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'brands#index'})
  match('brands', {:via => :get, :to => 'brands#index'})
  match('brands/new', {:via => :get, :to => 'brands#new'})
  match('brands', {:via => :post, :to => 'brands#create'})
  match('brands/:id', {:via => :get, :to => 'brands#show'})
  match('brands/:id', {:via => :delete, :to => 'brands#destroy'})

  match('styles/new', {:via => :get, :to => 'styles#new'})
  match('styles', {:via => :post, :to => 'styles#create'})
  match('styles/:id', {:via => :get, :to => 'styles#show'})
  match('styles/:id/edit', {:via => :get, :to => 'styles#edit'})
  match('styles/:id', {:via => [:patch, :put], :to => 'styles#update'})
  match('styles/:id', {:via => :delete, :to => 'styles#destroy'})
end
