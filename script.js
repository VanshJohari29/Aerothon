document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission
  
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
  
    // Perform login authentication
    if (username === "admin" && password === "password") {
        window.location.href = "dashboard.html";
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
      document.getElementById("message").innerHTML = "Invalid username or password!";
    }
  });
  