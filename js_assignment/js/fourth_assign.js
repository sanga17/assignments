function setCapture() {
    document.getElementById("list").className="asending";
    document.getElementById("capture").checked= false;
  }

  function myTimeout() {
    document.getElementById("demo").innerHTML = "Hello";
  }

  function changeText() {

    var status = document.getElementById("status");
    var bgColor=document.getElementById("switchboard");
    if(bgColor.style.backgroundColor == "red")
    {
      bgColor.style.backgroundColor = "gray"
      status.innerText = "Switch is OFF"
     var myVar=this.setTimeout ( myTimeout, 1000 );
    }
    else {
      document.getElementById("demo").innerHTML = "";
      bgColor.style.backgroundColor = "red"
      status.innerText = "Switch is On"
    }
    checkCapture();
  }

  function checkCapture () {
    var capture = document.getElementById("capture").checked;
    if(capture)
    {
      document.getElementById("list").className ="desending";
      document.getElementById("switch").style.backgroundColor = "green";
    }
    else
    {
      document.getElementById("switch").style.backgroundColor = "yellow";
      document.getElementById("list").className = "asending";
    }
  }