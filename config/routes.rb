Rails.application.routes.draw do
  get '/', to: 'home#index'
  namespace :api do
    namespace :v1 do
      get 'validation_codes/create'
      # api/v1
      resources :validation_codes, only: [:create]
      resources :session, only: [:create, :destroy]
      resources :me, only: [:show]
      resources :items
      resources :tags
    end
 end
end
