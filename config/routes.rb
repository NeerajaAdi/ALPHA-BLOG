Rails.application.routes.draw do
  root 'pages#home'
  get 'alpha_blog', to: 'pages#alpha_blog'
  resources :articles, only: [:show]
end
