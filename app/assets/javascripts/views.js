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


