Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts/index'
  get 'posts/create'
  get 'posts/dashboard'

  root 'posts#index'

end
