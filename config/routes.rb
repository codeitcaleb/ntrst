Rails.application.routes.draw do
  resources :photos
  
  devise_for :users, path: '', path_names: { sign_up: 'signup', sign_in: 'login', sign_out: 'logout'}, :controllers => { omniauth_callbacks: "callbacks" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#home'
end
