Rails.application.routes.draw do
  resources :categories do
    resources :answers
  end

  devise_for :users
  root to: 'pages#home'
  get "/pages/:page" => "pages#resultats", as: :resultats

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
