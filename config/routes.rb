Rails.application.routes.draw do
  resources :categories
  get 'category/index'
  resources :products
  root 'static_pages#landing_page'
end
