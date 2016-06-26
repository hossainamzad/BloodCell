// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready(function(){
	$(".search").click(function(e){
		e.preventDefault()
		$(".modal").show();
	})

});

$(document).ready(function(){

	setTimeout(function(){
		$("#notice-wrapper").fadeOut('slow', function(){
			$(this).remove();
		});
	}, 4500);

	// $(".notice").fadeOut(3000);
	// $(".alert").fadeOut(3000);

		// $(this).remove();
});

// or you can use this two lines of doing the same work. 

// $(document).ready(function(){

// 	// $(".notice").fadeOut(3000);
// 	// $(".alert").fadeOut(3000);

// });