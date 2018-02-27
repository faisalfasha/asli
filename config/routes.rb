Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'
  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    resources :products
    root 'stpre#index', as: 'stpre_index', via: :all
  end

  resources :keduas
  resources :products do
    get :who_bought, on: :member
  end

  get 'say/hello'

  get 'say/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
