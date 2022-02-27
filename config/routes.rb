Rails.application.routes.draw do
  resources :products
  root 'static_pages#landing_page'
end
