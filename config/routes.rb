Rails.application.routes.draw do
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    get "signout" => "devise/sessions#destroy"
  end
  devise_for :users
  resources :line_items
  resources :giohangs
  get 'tiem/index'
  resources :sanphams
  root :to => 'tiem#index'
  get 'sanpham/chitiet', to: 'sanphams#show', as: "detail"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
