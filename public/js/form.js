// function radioSizes(){
// 	  // Get the checkbox
//   var radioSmall = document.getElementById("radioSmall");
//   // Get the output text
//   var smallText = document.getElementById("smallText");
//     // Get the checkbox
//   var radioMedium = document.getElementById("radioMedium");
//   // Get the output text
//   var mediumText = document.getElementById("mediumText");
//   // Get the checkbox
//   var radioLarge = document.getElementById("radioLarge");
//   // Get the output text
//   var largeText = document.getElementById("largeText");
//    if (radioSmall.checked == true){
//        smallText.style.display = "block";
//     } else {
//        smallText.style.display = "none";
//     }  
// 	if (radioMedium.checked == true){
//        mediumText.style.display = "block";
//     } else {
//        mediumText.style.display = "none";
//     }  
//     if (radioLarge.checked == true){
//         largeText.style.display = "block";
//     } else {
//        largeText.style.display = "none";
//     }  
// }

// function checkboxToppings(){
// 	  // Get the checkbox
//   var checkboxPepperoni = document.getElementById("checkboxPepperonitoppings");
//   // Get the output text
//   var pepperoniText = document.getElementById("pepperoniText");
//     // Get the checkbox
//   var checkboxSausage = document.getElementById("checkboxSausagetoppings");
//   // Get the output text
//   var sausageText = document.getElementById("sausageText");
//   // Get the checkbox
//   var checkboxHam = document.getElementById("checkboxHamtoppings");
//   // Get the output text
//   var hamText = document.getElementById("hamText");
//   var checkboxBacon = document.getElementById("checkboxBacontoppings");
//   // Get the output text
//   var baconText = document.getElementById("baconText");
//   var checkboxBellpepper = document.getElementById("checkboxBellpeppertoppings");
//   // Get the output text
//   var bellPeppertext = document.getElementById("bellPeppertext");
//   var checkboxJalapenos = document.getElementById("checkboxJalapenostoppings");
//   // Get the output text
//   var jalapenosText = document.getElementById("jalapenosText");
//   var checkboxBananapeppers = document.getElementById("checkboxBananapepperstoppings");
//   // Get the output text
//   var bananaPepperstext = document.getElementById("bananaPepperstext");
//   var checkboxPepperjack = document.getElementById("checkboxPepperjacktoppings");
//   // Get the output text
//   var pepperJackText = document.getElementById("pepperJackText");
//   var checkboxColbyjack = document.getElementById("checkboxColbyjacktoppings");
//   // Get the output text
//   var colbyJacktext = document.getElementById("colbyJacktext");
//   var checkboxParmesan = document.getElementById("checkboxParmesantoppings");
//   // Get the output text
//   var parmesanText = document.getElementById("parmesanText");
//   var checkboxMozzerella = document.getElementById("checkboxMozzerellatoppings");
//   // Get the output text
//   var mozzerellaText = document.getElementById("mozzerellaText");
//   if (checkboxPepperoni.checked == true){
//          pepperoniText.style.display = "block";
//     } else {
//        pepperoniText.style.display = "none";
//     }  
//    if (checkboxSausage.checked == true){
//         sausageText.style.display = "block";
//     } else {
//        sausageText.style.display = "none";
//     }  
//     if (checkboxHam.checked == true){
//        hamText.style.display = "block";
//     } else {
//        hamText.style.display = "none";
//     }  
//     if (checkboxBacon.checked == true){
//          baconText.style.display = "block";
//     } else {
//        baconText.style.display = "none";
//     } 
//     if (checkboxBellpepper.checked == true){
//         bellPeppertext.style.display = "block";
//     } else {
//        bellPeppertext.style.display = "none";
//     } 
//     if (checkboxJalapenos.checked == true){
//         jalapenosText.style.display = "block";
//     } else {
//        jalapenosText.style.display = "none";
//     } 
//     if (checkboxBananapeppers.checked == true){
//          bananaPepperstext.style.display = "block";
//     } else {
//        bananaPepperstext.style.display = "none";
//     } 
//     if (checkboxPepperjack.checked == true){
//         pepperJacktext.style.display = "block";
//     } else {
//        pepperJacktext.style.display = "none";
//     } 
//     if (checkboxColbyjack.checked == true){
//         colbyJacktext.style.display = "block";
//     } else {
//        colbyJacktext.style.display = "none";
//     } 
//     if (checkboxParmesan.checked == true){
//         parmesanText.style.display = "block";
//     } else {
//        parmesanText.style.display = "none";
//     } 
//     if (checkboxMozzerella.checked == true){
//         mozzerellaText.style.display = "block";
//     } else {
//        mozzerellaText.style.display = "none";
//     } 
// }

// function checkboxSauces(){
//     // Get the checkbox
//   var checkboxTomato = document.getElementById("checkboxTomatosauce");
//   // Get the output text
//   var tomatoText = document.getElementById("tomatoText");
//     // Get the checkbox
//   var checkboxWhite = document.getElementById("checkboxWhitesauce");
//   // Get the output text
//   var whiteText = document.getElementById("whiteText");
//   // Get the checkbox
//   var checkboxRanch = document.getElementById("checkboxRanchsauce");
//   // Get the output text
//   var ranchText = document.getElementById("ranchText");
//    // Get the checkbox
//   var checkboxMayo = document.getElementById("checkboxMayosauce");
//   // Get the output text
//   var mayoText = document.getElementById("mayoText");
//   if (checkboxTomato.checked == true){
//         tomatoText.style.display = "block";
//     } else {
//        tomatoText.style.display = "none";
//     }  
//    if (checkboxWhite.checked == true){
//         whiteText.style.display = "block";
//     } else {
//        whiteText.style.display = "none";
//     }  
//     if (checkboxRanch.checked == true){
//         ranchText.style.display = "block";
//     } else {
//        ranchText.style.display = "none";
//     }  
//     if (checkboxMayo.checked == true){
//         mayoText.style.display = "block";
//     } else {
//        mayoText.style.display = "none";
//     }  
// }
function checkCookies() {
    var text = "";
    if (navigator.cookieEnabled == true) {
        text = "";
    } else {
        text = "Cookies are not enabled. For the best experience with this app, please turn on your browser's cookies.";
    }
    document.getElementById("demo").innerHTML = text;
}
// function checkboxCrusts(){
//     // Get the checkbox
//   var checkboxStuffedcrust = document.getElementById("checkboxStuffed");
//   // Get the output text
//   var stuffedText = document.getElementById("stuffedText");
//     // Get the checkbox
//   var checkboxThincrust = document.getElementById("checkboxThin");
//   // Get the output text
//   var thinText = document.getElementById("thinText");
//   // Get the checkbox
//   var checkboxThickcrust = document.getElementById("checkboxThick");
//   // Get the output text
//   var thickText = document.getElementById("thickText");
//   if (checkboxStuffedcrust.checked == true){
//         stuffedText.style.display = "block";
//     } else {
//        stuffedText.style.display = "none";
//     }  
//    if (checkboxThincrust.checked == true){
//         thinText.style.display = "block";
//     } else {
//        thinText.style.display = "none";
//     }  
//     if (checkboxThickcrust.checked == true){
//         thickText.style.display = "block";
//     } else {
//        thickText.style.display = "none";
//     }  
// }
function radioDelivery(){
    if (document.getElementById("radioYes").checked){
      document.getElementById("address").style.display = 'block';
    }   else if (document.getElementById("radioNo").checked) {
      document.getElementById("address").style.display = 'none'
    }
    else 
        document.getElementById("address").style.display = 'none';
}
// function valThis() {
// var checkBoxes = document.getElementsByClassName("container");
// var isChecked = false;
//     for (var i = 0; i < checkBoxes.length; i++) {
//         if ( checkBoxes[i].checked ) {
//             isChecked = true;
//         }
//     }
//     if ( isChecked ) {

//         } else {
//             alert( 'Please check at least one checkbox!' );
//         }   
// }