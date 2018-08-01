function radioSizes(){
	  // Get the checkbox
  var radioSmall = document.getElementById("radioSmall");
  // Get the output text
  var text = document.getElementById("text");
    // Get the checkbox
  var radioMedium = document.getElementById("radioMedium");
  // Get the output text
  var text = document.getElementById("text");
  // Get the checkbox
  var radioLarge = document.getElementById("radioLarge");
  // Get the output text
  var text = document.getElementById("text");
   if (radioSmall.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
	if (radioMedium.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (radioLarge.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
}

function checkboxToppings(){
	  // Get the checkbox
  var checkboxPepperoni = document.getElementById("checkboxPepperonitoppings");
  // Get the output text
  var text = document.getElementById("text");
    // Get the checkbox
  var checkboxSausage = document.getElementById("checkboxSausagetoppings");
  // Get the output text
  var text = document.getElementById("text");
  // Get the checkbox
  var checkboxHam = document.getElementById("checkboxHamtoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxBacon = document.getElementById("checkboxBacontoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxBellpepper = document.getElementById("checkboxBellpeppertoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxJalapenos = document.getElementById("checkboxJalapenostoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxBananapeppers = document.getElementById("checkboxBananapepperstoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxPepperjack = document.getElementById("checkboxPepperjacktoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxColbyjack = document.getElementById("checkboxColbyjacktoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxParmesan = document.getElementById("checkboxParmesantoppings");
  // Get the output text
  var text = document.getElementById("text");
  var checkboxMozzerella = document.getElementById("checkboxMozzerellatoppings");
  // Get the output text
  var text = document.getElementById("text");
  if (checkboxPepperoni.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
   if (checkboxSausage.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (checkboxHam.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (checkboxBacon.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    } 
    if (checkboxBellpepper.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    } 
    if (checkboxJalapenos.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    } 
    if (checkboxBananapeppers.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    } 
    if (checkboxPepperjack.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    } 
    if (checkboxColbyjack.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    } 
    if (checkboxParmesan.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    } 
    if (checkboxMozzerella.checked == true){
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
function checkCookies() {
    var text = "";
    if (navigator.cookieEnabled == true) {
        text = "";
    } else {
        text = "Cookies are not enabled. For the best experience with this app, please turn on your browser's cookies.";
    }
    document.getElementById("demo").innerHTML = text;
}
function checkboxCrusts(){
    // Get the checkbox
  var checkboxStuffedcrust = document.getElementById("checkboxStuffed");
  // Get the output text
  var text = document.getElementById("text");
    // Get the checkbox
  var checkboxThincrust = document.getElementById("checkboxThin");
  // Get the output text
  var text = document.getElementById("text");
  // Get the checkbox
  var checkboxThickcrust = document.getElementById("checkboxThick");
  // Get the output text
  var text = document.getElementById("text");
  if (checkboxStuffedcrust.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
   if (checkboxThincrust.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
    if (checkboxThickcrust.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
}
function radioDelivery(){
    // Get the checkbox
  var radioYes = document.getElementById("radioYes");
  // Get the output text
  var text = document.getElementById("text");
    // Get the checkbox
  var radioNo = document.getElementById("radioNo");
  // Get the output text
  var text = document.getElementById("text");
   if (radioYes.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }  
  if (radioNo.checked == true){
        text.style.display = "block";
    } else {
       text.style.display = "none";
    }   
}