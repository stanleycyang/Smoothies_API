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

Change `views.coffee` to `views.js`
In `views.js`

	  var list = $('ul.menu');
	  $.get( "http://localhost:3000/api/smoothies", function( data ) {
	      // Loops through the data, puts API data into the menu
	      $.each(data, function(index, item){
	        var tr = $('<tr/>')
	          .appendTo($('table.table'));
	
	        $('<td/>')
	          .text(item.id)
	          .appendTo(tr);
	
	        $('<td/>')
	          .text(item.name)
	          .addClass('smoothie')
	          .attr('id', item.id)
	          .appendTo(tr);
	
	         $('<td/>')
	          .text(item.calories)
	          .appendTo(tr);
	     });
	  }).fail(function(data, status,jqXHR) {
	    console.log(status);
	  });
	
	  $(document).on('click', '.smoothie', function(){
	      $.get("http://localhost:3000/api/smoothies/" + $(this).attr('id'), function(data){
	        $("#fat").text(data.total_fat + 'g');
	        $("#sugar").text(data.sugar + 'g');
	        $("#fiber").text(data.fiber + 'g');
	        console.log(data);
	      });
	  });


In `views/index.html.erb`

	<div class="container-fluid">

	  <nav class="navbar">
	    <div class="container-fluid">
	      <div class="navbar-header">
	        <a class="navbar-brand" href="#">
	          <span class="glyphicon glyphicon-apple"></span>
	        </a>
	      </div>
	    </div>
	  </nav>
	
	  <div class="row">
	    <div class="col-sm-3">
	        <img src="http://themissinformation.com/wp-content/uploads/2014/09/More-fruit-smoothies.jpg" alt="smoothie" class="img-circle img-responsive">
	    </div>
	    <div class="col-sm-9">
	      <table class="table table-striped">
	        <tbody>
	          <thead>
	            <th>IDs</th>
	            <th>Smoothies</th>
	            <th>Calories</th>
	          </thead>
	        </tbody>
	      </table>
	    </div>
	  </div>
	
	  <div class="row text-center">
	     <%#Total fat%>
	     <div class="col-sm-4">
	       <div class="panel panel-primary">
	         <div class="panel-heading">
	          Fat
	         </div>
	         <div class="panel-body">
	           <h4 id="fat">NA</h5>
	         </div>
	       </div>
	     </div>
	     <%#Sugar%>
	     <div class="col-sm-4">
	        <div class="panel panel-success">
	          <div class="panel-heading">
	            Sugar
	          </div>
	          <div class="panel-body">
	           <h4 id="sugar">NA</h5>
	          </div>
	        </div>
	     </div>
	     <%#Fiber%>
	     <div class="col-sm-4">
	        <div class="panel panel-info">
	          <div class="panel-heading">
	            Fiber
	          </div>
	          <div class="panel-body">
	           <h4 id="fiber">NA</h5>
	          </div>
	        </div>
	     </div>
	  </div>
	
	</div>

###Now, you should have an application that interacts with an API!
