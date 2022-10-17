<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://unpkg.com/tailwindcss@2.2.4/dist/tailwind.min.css" rel="stylesheet">    
	<link rel="stylesheet" href="CSS/sign in.css">
	<style>
	.text-danger{
		
		color:red;
	}
	.error{
		max-width:265px;
		text-align: center;
		display: block;
	}
	</style>
	<title>Log in</title>
</head>
<body>
<main class="h-screen overflow-hidden flex items-center justify-center" style="background: #ffffff;">
    <form action="/JEE_mini_project/Login" method="POST" class="min-h-screen flex justify-center items-center">
		<div class="absolute w-60 h-60 rounded-xl bg_blue_1 -top-5 -left-16 z-0 transform rotate-45 hidden md:block"></div>
		<div class="absolute w-48 h-48 rounded-xl bg_blue_1 cube_bottom transform rotate-12 hidden md:block"></div>
		<div class="py-12 px-12 bg-white rounded-2xl shadow-xl z-20">
			<div class="eye-password"><img id="eye_image" src="IMAGES/login close eye.png"  alt=""></div>
			<div>
				<h1 class="text-3xl font-bold text-center mb-4 cursor-pointer text-gray-700">Connexion</h1>
				<!-- <p class=" w-80 text-center text-sm mb-8 font-semibold text-gray-700 tracking-wide cursor-pointer">Create an
					account to enjoy all the services without any ads for free!</p> -->
			</div>
			<div class="space-y-4">
				<input type="text" name="email" id="email" placeholder="Email Adresse" value="${USER.email}" class="block text-sm py-3 px-4 rounded-lg w-full border outline-none" />
				<span class="text-danger">${FORM.errors["email"]}</span>
				<div class="password_input">	
					<input type="password" name="password" id="password" placeholder="Mot De Passe" class="block text-sm py-3 px-4 rounded-lg w-full border outline-none" />
					<i class="material-icons" id="togglePassword">visibility_off</i>
					<span class="text-danger">${FORM.errors["password"]}</span>
				</div>
			</div>
			<div class="text-center mt-6">
				<button class="py-3 w-64 text-xl text-white rounded-2xl" style="background-color: #4299e1;">Se Connecter</button>
				<p class="mt-4 text-sm">Nouveau compte? <span class="underline cursor-pointer"><a href="Signup">Inscrivez-vous!</a> </span></p>
			</div>
				
			<div class="error">
				<p class="text-danger">${unknown_user}</p>
			</div>
			
				
			</div>
			<div class="w-40 h-40 absolute bg_blue_1 rounded-full top-0 right-12 hidden md:block"></div>
		<div class="w-20 h-40 absolute bg_blue_1 rounded-full bottom-20 left-10 transform rotate-45 hidden md:block"></div>

		<div class="w-40 h-40 absolute bg_blue_1 rounded-full top-0 right-12 hidden md:block"></div>
		<div class="w-20 h-40 absolute bg_blue_1 rounded-full bottom-20 left-10 transform rotate-45 hidden md:block"></div>
	</form>
	
</main>
<script type="text/javascript" src="JAVASCRIPT/sign in.js"></script>
</body>
</html>