#Consuming your Smoothie API


- Use jquery to consume your own API
- Build a beautiful app with Smoothie API
- Add your own style framework to make it awesome

Open up `Rob's Smooth_API`: [Smoothies API](https://github.com/syang019/Smoothies_API)

	$ git clone https://github.com/syang019/Smoothies_API

Go ahead and generate a ViewController

	$ cd Smoothies_API
	$ rails g controller views index

In `routes.rb`, change the root:

	Rails.application.routes.draw do
	  root 'views#index'
	
	  namespace :api do
	    resources :smoothies do
	      resources :fruits
	    end
	  end
	end

Add bootstrap gem 

	gem 'bootstrap-sass'

Change `application.css` to `application.scss`

Import bootstrap

	@import "bootstrap-sprockets";
	@import "bootstrap";



