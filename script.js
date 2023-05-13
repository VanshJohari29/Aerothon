document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission
  
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
  
    // Perform login authentication
    if (username === "admin" && password === "password") {
        window.location.href = "dashboard.html";
    }
        else if(username === "fabrication" && password === "fab1"){
               window.location.href = "fabrication.html";
        }
        else if(username === "subassembly" && password === "subassembly1")
        {
            window.location.href = "subassembly.html";
        }
        else if(username === "assembly" && password === "assembly1"){
          window.location.href = "assembly.html";
        }
     else {
      document.getElementById("message").innerHTML = "Invalid username or password!";
    }
  });
  