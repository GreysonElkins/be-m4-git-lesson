Rails.application.routes.draw do
  get '/', to: 'landing#index', as: 'root'

  # yung namespace
  get   '/admin/dashboard',      to: 'admin/dashboard#show', as: 'admin_dashboard'


  # session
  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # cart
  get    'cart/new',  to: 'carts#new',   as: 'new_cart'
  get    'cart/edit', to: 'carts#edit',  as: 'edit_cart'
  get    'cart',      to: 'carts#show',  as: 'cart'
  patch  '/cart',     to: 'carts#update'
  put    '/cart',     to: 'carts#update'
  delete '/cart',     to: 'carts#destroy'
  post   '/cart',     to: 'carts#create'

  # items
  get '/items',     to: 'items#index', as: 'items'
  get '/items/:id', to: 'items#show',  as: 'item'

  # users
  get  '/users/new', to: 'users#new',    as: 'new_user'
  post '/users',     to: 'users#create', as: 'users'
  get  '/dashboard', to: 'users#show'

  # orders
  get   '/orders',     to: 'orders#index', as: 'orders'
  get   'orders/:id',  to: 'orders#show',  as: 'order'
  post  '/orders',     to: 'orders#create'
  patch '/orders/:id', to: 'orders#update'
  put   '/orders/:id', to: 'orders#update'

  # categories
  get '/categories', to: 'categories#index'
  get '/:category',  to: 'categories#show', param: :slug, as: "category"


  # RESOURCES -> previously:

  # root to:  'landing#index'

  # namespace :admin do
  #   resource  :dashboard, only: :show, controller: :dashboard
  #   resources :items,     only: :index
  #   resources :users,     only: [:show, :edit, :update]
  #   resources :items,     only: [:new, :create, :show, :edit, :update]

  #   get '/ordered',   to: 'orders#index'
  #   get '/paid',      to: 'orders#index'
  #   get '/cancelled', to: 'orders#index'
  #   get '/completed', to: 'orders#index'
  # end

  # get    '/login',     to: 'sessions#new'
  # post   '/login',     to: 'sessions#create'
  # delete '/logout',    to: 'sessions#destroy'
  # get    '/dashboard', to: 'users#show'

  # resource  :cart
  # resources :items,  only: [:index, :show]
  # resources :users,  only: [:new, :create]
  # resources :orders, only: [:index, :show, :create, :update]

  # get '/categories', to: 'categories#index'
  # get '/:category',  to: 'categories#show', param: :slug, as: "category"
end