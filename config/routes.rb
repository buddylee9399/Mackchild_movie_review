Rails.application.routes.draw do
  resources :movies do
    collection do 
      get 'search'
    end
    # resources :reviews, except: %i[show index]
    resources :reviews
  end
  root to: 'movies#index'
  
  get   'about', to: 'static_pages#about'
  get   'contact', to: 'static_pages#contact'
  get   'privacy', to: 'static_pages#privacy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
