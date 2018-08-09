
function checkCookies() {
    var text = "";
    if (navigator.cookieEnabled == true) {
        text = "";
    } else {
        text = "Cookies are not enabled. For the best experience with this app, please turn on your browser's cookies.";
    }
    document.getElementById("demo").innerHTML = text;
}
function radioDelivery(){
    console.log("in radioDelivery")
    if (document.getElementById("radioYes").checked){
      document.getElementById("address").style.display = 'block';
    }   else if (document.getElementById("radioNo").checked) {
      document.getElementById("address").style.display = 'none'
    }
    else 
        document.getElementById("address").style.display = 'none';
}
function val(){
var chks = document.getElementsByName('toppings[]');
var hasChecked = false;
for (var i = 0; i < chks.length; i++)
{
if (chks[i].checked)
{
hasChecked = true;
break;
}
}
if (hasChecked == false)
{
    alert("Please select an option for the topping.");
    return false;
}
return true;
}