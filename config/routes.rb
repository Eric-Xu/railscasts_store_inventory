Store::Application.routes.draw do
  resources :products
  root to: 'products#index'

  # Ep 46: Catch-all Routes
  match '*path', to: 'redirect#index'
end
