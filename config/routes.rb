Rails.application.routes.draw do
  root 'views#index'

  namespace :api do
    get '/search' => "smoothies#search"
    resources :smoothies do
      resources :fruits
    end
  end
end
