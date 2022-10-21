Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    namespace :api, default: {format: :json} do
      resources :pokemon, only: [:index, :create, :show, :update] do
        resources :items, only: [:create, :index]
      end

      resources :items, only: [:update, :destroy]

      get "/pokemon/types", to: "pokemon#types"
    end
  # Defines the root path route ("/")
  # root "articles#index"
end
