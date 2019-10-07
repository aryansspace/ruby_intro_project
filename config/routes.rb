Rails.application.routes.draw do
  get 'about/index'
  get 'countries/index'
  get 'countries/show'
  get 'citizens/index'
  get 'citizens/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  # resources :countries do
  #   resources :users 
  # end

  # resources :uses do
  #   resources :countries
  # end

end
