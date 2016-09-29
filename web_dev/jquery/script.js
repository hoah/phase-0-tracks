window.onload = function() {
 
    alert( "welcome" );
 
};



$( document ).ready(function() {
 
    $( "a" ).click(function( event ) {
 
      alert( "As you can see, the link no longer took you to jquery.com" );
 
      event.preventDefault();
 
    });

    $( "p" ).mouseover(function( event ) {
      event.target.style.color = "red"
    });

    $( "p" ).mouseout(function( event ) {
      event.target.style.color = "black"
    });
 
});


