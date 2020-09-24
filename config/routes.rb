Rails.application.routes.draw do
  root 'posts#index'
  get 'about' => 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resource :posts
end
