Rails.application.routes.draw do
  match('brands', {:via => :get, :to => 'brands#index'})
end
