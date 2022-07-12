Rails.application.routes.draw do
  #root 'application#alpha_blog'
  get 'alpha_blog', to: 'pages#alpha_blog'
end
