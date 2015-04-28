Rails.application.routes.draw do
  root 'views#index'

  namespace :api do
    resources :smoothies do
      resources :fruits
    end
  end
end
