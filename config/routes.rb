Rails.application.routes.draw do
  resources :store_has_articles
  resources :buyed_articles_on_stores
  resources :buyings
  resources :articles
  resources :stores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "buyings#index"
end
