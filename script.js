document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault(); // Prevent form submission
  
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
  
    // Perform login authentication
    if (username === "admin" && password === "password") {
        window.location.href = "dashboard.html";
    } else {
      document.getElementById("message").innerHTML = "Invalid username or password!";
    }
  });
  