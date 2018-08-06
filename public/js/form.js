
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
    if (document.getElementById("radioYes").checked){
      document.getElementById("address").style.display = 'block';
    }   else if (document.getElementById("radioNo").checked) {
      document.getElementById("address").style.display = 'none'
    }
    else 
        document.getElementById("address").style.display = 'none';
}
