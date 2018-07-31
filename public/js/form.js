function checkboxSizes(){
	  // Get the checkbox
  var checkboxSmall = document.getElementById("checkboxSmall");
  // Get the output text
  var text = document.getElementById("text");
    // Get the checkbox
  var checkboxMedium = document.getElementById("checkboxMedium");
  // Get the output text
  var text = document.getElementById("text");
  // Get the checkbox
  var checkboxLarge = document.getElementById("checkboxLarge");
  // Get the output text
  var text = document.getElementById("text");
   if (checkboxSmall.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
	if (checkboxMedium.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (checkboxLarge.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
}

function checkboxToppings(){
	  // Get the checkbox
  var checkboxMeats = document.getElementById("checkboxMeatstoppings");
  // Get the output text
  var text = document.getElementById("text");
    // Get the checkbox
  var checkboxVegetables = document.getElementById("checkboxVegetablestoppings");
  // Get the output text
  var text = document.getElementById("text");
  // Get the checkbox
  var checkboxCheeses = document.getElementById("checkboxCheesestoppings");
  // Get the output text
  var text = document.getElementById("text");
  if (checkboxMeats.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
   if (checkboxVegetables.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (checkboxCheeses.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
}

function checkboxSauces(){
    // Get the checkbox
  var checkboxTomato = document.getElementById("checkboxTomatosauce");
  // Get the output text
  var text = document.getElementById("text");
    // Get the checkbox
  var checkboxWhite = document.getElementById("checkboxWhitesauce");
  // Get the output text
  var text = document.getElementById("text");
  // Get the checkbox
  var checkboxRanch = document.getElementById("checkboxRanchsauce");
  // Get the output text
  var text = document.getElementById("text");
   // Get the checkbox
  var checkboxMayo = document.getElementById("checkboxMayosauce");
  // Get the output text
  var text = document.getElementById("text");
  if (checkboxTomato.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
   if (checkboxWhite.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (checkboxRanch.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (checkboxMayo.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
}
