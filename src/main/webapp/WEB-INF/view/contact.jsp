<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=, initial-scale=1.0">
<title>Contactez-nous</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css"
	rel="stylesheet">
</head>
<style>
input {
	height: 50px;
	width: 600px;
}

form {
	height: 620px;
	width: 600px;
	background-color: lightBlue;
	border-radius: 50px;
}
</style>
<body>

	<%@ include file="/WEB-INF/view/navbar.jsp"%>




	<table>
		<tr>
			<td>
				<div class="w-fll  bg-no-repeat bg-cover"
					style="background-image: url('');">
					<img
						src="IMAGES/contact.png"
						width="700" height="800" />
				</div>
			</td>
			<td>
				<div>
					<form
						class=" bg- p-8 rounded shadow-2xl  sm:max-w-xl sm:mx-auto w-full  max-w-lg"
						style="margin-top: 50px; width: 700; height: 400" action="cantact"
						method="post">
						<h1 class="text-3xl relative py-1 font-black text-center">Contactez-nous
						</h1>
						<div class="relative py-3 sm:max-w-xl sm:mx-auto w-full  max-w-lg">
							<div class="  py-10 flex flex-col justify-center sm:py-12">
								<div class="flex flex-wrap -mx-3 mb-6">

									<label
										class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
										for="grid-first-name"> Email </label> <input name="email"
										class="appearance-none block w-full bg-white-200 text-bleu-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
										id="grid-Email" type="text" placeholder="xxxx@yyyy.com">

								</div>



								<div class="flex flex-wrap -mx-3 mb-6">

									<label
										class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
										Valid Phone Number(s) </label> <input name="tel"
										class="appearance-none block w-full bg-white-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
										id="grid-phone" type="text" placeholder="">

								</div>


								<div class="flex flex-wrap -mx-3 mb-6">

									<label
										class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
										for="grid-password"> Inserez votre question ici </label>
									<textarea name="message"
										class="appearance-none block w-full bg-white-200 text-gray-700 border border-gray-200 rounded-md py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
										id="grid-password" rows="5" placeholder="Message"></textarea>
								</div>
								<div class="">
									<div class="">

										<button type="submit"
											class=" nt-4  text-black py-2 px-20 rounded-md hover:bg-blue-500"
											style="margin: 20px; width: 90%; border-radious: 1000px; background-color:#40d0f1; color:white">Envoyer</button>

									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>