Rails.application.routes.draw do
  root "posts#index"
  resources :posts, execpt: [:show]
  get 'posts/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
