Rails.application.routes.draw do
  get 'search/index'
  get 'about/index'
  get 'countries/index'
  get 'countries/show'
  get 'citizens/index'
  get 'citizens/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :search, only: [:index] do
    collection do
      get 'index'
    end
  end

  resources :countries do
    resources :citizens 
  end

  resources :citizens do
    resources :countries
  end

end
