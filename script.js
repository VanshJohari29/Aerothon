document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission
  
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
  
    // Perform login authentication
    if (username === "admin" && password === "password") {
        window.location.href = "dashboard.html";
<<<<<<< HEAD
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
=======
    } 
    else if (username === "assembly" && password === "password") {
      window.location.href = "assembly.html";
  } 
  else if (username === "subassembly" && password === "password") {
    window.location.href = "subassembly.html";
} 
else if (username === "fabrication" && password === "password") {
  window.location.href = "fabrication.html";
} 
    else {
>>>>>>> 25686b2ba2f9d657aa47a719063f5369d5ba2a7d
      document.getElementById("message").innerHTML = "Invalid username or password!";
    }
  });
  