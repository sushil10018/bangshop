Rails.application.routes.draw do
  root 'shops#index'
  get 'shops/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
