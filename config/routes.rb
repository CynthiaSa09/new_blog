Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts/index'
  get 'posts/dashboard'
  
  post 'posts', to: 'posts#create'
  get 'posts/success', to:'posts#success', as: 'success'

  root to: 'posts#index'

end
