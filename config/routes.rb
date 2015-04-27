Rails.application.routes.draw do
  namespace :api do
    resources :smoothies do
      resources :fruits
    end
  end
end
