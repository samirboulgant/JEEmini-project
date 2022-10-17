const visibilityToggle = document.getElementsByTagName('i')[0];
const password_input = document.getElementById("password");
const eye_image = document.getElementById("eye_image");

visibilityToggle.addEventListener("click", function() {
	const type = password_input.getAttribute('type') === "password" ? "text" : "password";
	password_input.setAttribute("type", type);
	if (type === "text") {
		visibilityToggle.innerHTML = "visibility";
		eye_image.setAttribute("src", "IMAGES/login open eye.png");
	}
	else {
		visibilityToggle.innerHTML = "visibility_off";
		eye_image.setAttribute("src", "IMAGES/login close eye.png");
	}
})
