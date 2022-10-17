const visibilityToggle = document.getElementById('togglePassword');

const password_input = document.getElementById("passwordd");

visibilityToggle.addEventListener("click", function(){
    const type = password_input.getAttribute('type') === "password" ? "text" : "password";
    password_input.setAttribute("type", type);
    if (type === "text"){
        visibilityToggle.innerHTML = "visibility";
    }
    else{
        visibilityToggle.innerHTML= "visibility_off";
    }
})


password_input.addEventListener("input", function(e){
    var err_password = document.getElementById("err_pass");
    console.log(e.target.value.length);
    if (e.target.value.length == 0){
        err_password.classList.add("hidden");
    }
    else if(e.target.value.length < 8){
        err_password.classList.remove("hidden");
    }
    else{
        err_password.classList.add("hidden");
    }
    
})
