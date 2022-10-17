<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://unpkg.com/tailwindcss@2.2.4/dist/tailwind.min.css" rel="stylesheet">
	<link rel="stylesheet" href="CSS/sign up.css">
</head>
<body>
    <%@ include file="/WEB-INF/view/navbar.jsp" %>
	<!-- <main class="h-screen overflow-hidden flex items-center justify-center" style="background: #edf2f7;"> -->
		<div class="font-mono ">
			<!-- Container -->
			<div class="container mx-auto ">
				<div class="flex justify-center px-6 my-12 ">
					<!-- Row -->
					<div class="w-full xl:w-3/4 lg:w-11/12 flex">
						<!-- Col -->
						<div class="w-full h-auto bg-gray-400 hidden lg:block lg:w-5/12 bg-cover rounded-l-lg signup_left"
							style="background-image: url('IMAGES/Craftsmen.png')"
						></div>
						<!-- Col -->
						<div class="w-full lg:w-7/12 bg-white p-5 rounded-lg lg:rounded-l-none signup_right">
							<h3 class="pt-4 text-2xl text-center">Créer un compte!</h3>
							<form class="px-8 pt-6 pb-8 mb-4 bg-white rounded" method="POST" action="/JEE_mini_project/Signup">
								<div class="mb-4 md:flex md:justify-between">
									<div class="mb-4 md:mr-2 md:mb-0">
										<label class="block mb-2 text-sm font-bold text-gray-700" for="preNom">
											Prénom
										</label>
										<input
											class="w-full px-3 py-2 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
											id="preNom"
											name="prenom"
											type="text"
											placeholder="Prénom"
											required
										/>
									</div>
									<div class="md:ml-2">
										<label class="block mb-2 text-sm font-bold text-gray-700" for="Nom">
											Nom
										</label>
										<input
											class="w-full px-3 py-2 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
											id="Nom"
											name="nom"
											type="text"
											placeholder="Nom"
											required
										/>
									</div>
								</div>
								<div class="mb-4">
									<label class="block mb-2 text-sm font-bold text-gray-700" for="email">
										Email
									</label>
									<input
										class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
										id="email"
										type="email"
										name="email"
										placeholder="email@exemple.com"
										required
									/>
								</div>
								
								<div class="mb-4">
									<label class="block mb-2 text-sm font-bold text-gray-700" for="passwordd">
										Mot de passe
									</label>
									<div class="password_input">
										<input
											class="w-full px-3 py-2 mb-3 text-sm leading-tight text-gray-700 border rounded shadow appearance-none focus:outline-none focus:shadow-outline"
											id="passwordd"
											type="password"
											name="password"
											placeholder="****************"
											minlength="8"
											
											required
										/>
										<i class="material-icons" id="togglePassword">visibility_off</i>
										
									</div>
									<p class="text-xs italic text-red-500 hidden" id="err_pass">Au moins 8 caractères</p>
								</div>
								
								
								<div class="mb-6 text-center">
									<button
										class="w-full px-4 py-2 font-bold text-white bg-blue-500 rounded-full hover:bg-blue-700 focus:outline-none focus:shadow-outline"
										type="submit"
									>
									Créer un compte
									</button>
								</div>
								<hr class="mb-6 border-t" />
								
								<div class="text-center">
									<a
										class="inline-block text-sm text-blue-500 align-baseline hover:text-blue-800"
										href="Login"
									>
									Vous avez déjà un compte? Connexion!
									</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- </main> -->
<script type="text/javascript" src="JAVASCRIPT/sign up.js"></script>
</body>
</html>
