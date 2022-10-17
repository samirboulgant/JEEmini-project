<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <title>Insert title here</title>
      <link href="https://unpkg.com/tailwindcss@2.2.4/dist/tailwind.min.css" rel="stylesheet">
      <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
	<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.4/dist/tailwind.min.css" />
	<!--Replace with your tailwind.css once created-->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700"
		rel="stylesheet" />
	
      <style>
        .imagePreview {
	width: 100%;
	height: 250px;
	background-position: center center;
	background:
		url(http://cliquecities.com/assets/no-image-e3699ae23f866f6cbdf8ba2443ee5c4e.jpg);
	background-color: #fff;
	background-size: cover;
	background-repeat: no-repeat;
	display: inline-block;
	box-shadow: 0px -3px 6px 2px rgba(0, 0, 0, 0.2);
}

.btn-primary {
	display: block;
	border-radius: 0px;
	box-shadow: 0px 4px 6px 2px rgba(0, 0, 0, 0.2);
	margin-top: -5px;
}

.imgUp {
	margin-bottom: 15px;
}

.del {
	position: absolute;
	top: 0px;
	right: 15px;
	width: 30px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	background-color: rgba(255, 255, 255, 0.6);
	cursor: pointer;
}

.imgAdd {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	background-color: #4bd7ef;
	color: #fff;
	box-shadow: 0px 0px 2px 1px rgba(0, 0, 0, 0.2);
	text-align: center;
	line-height: 30px;
	margin-top: 0px;
	cursor: pointer;
	font-size: 15px;
}
.titre{
	margin-bottom: -2%;
}
.galr{
	margin-top: 5%;
}
.prof{
	margin-top: 1.5%;
}

.imgAdd::before{
	vertical-align:-50%;
}

      </style>
   </head>
   <body style="background-color:#fafafa">
      <!-- component -->
      <!-- navbar -->
	
	<%@ include file="/WEB-INF/view/navbar.jsp" %>
      <div class="w-full">
      <!-- <div class="bg-gradient-to-b from-blue-300 to-blue-500 h-96"></div> -->
      <div class="h-80"></div>
      <div class="max-w-5xl mx-auto px-1 sm:px-2 lg:px-3 mb-6">
      <div class="curveit bg-white w-full shadow rounded p-6 sm:p- -mt-72">
      <p class="txtalign text-3xl font-bold leading-7 text-center">
      	Creer une offre d'emploi
      </p>
      <form action="CreerOffre" method="post" enctype="multipart/form-data" class="container">
         <div class="md:flex items-center mt-2"></div>
         <div class="md:flex items-center mt-2">
            <div class="w-full flex flex-col">
               <label class="titre">Titre</label> <input
                  type="text" name="AAAA"
                  class="leading-none text-gray-900 p-2 focus:outline-none focus:border-blue-700 mt-4 border rounded border-gray-200" />
            </div>
         </div>
         							<div class="row">
															<div class="col">
																<div class="form-group">
																	<label class="prof">Profession</label> 
																	<select class="custom-select" name="profession" >
																		<c:forEach items="${ sessionScope.SESSION_PROFS }" var="element" >
																			
																			<option value="${ element.getCodeProfession() }"><c:out value="${ element.getNom() }" /></option>
																	
																		</c:forEach>

														             </select>
														             
																	
																</div>
																<span class="text-danger">${FORM.errors["profession"]}</span>
																
															</div>
														</div>
														
														<div class="row">
															<div class="col">
																<div class="form-group">
																	<label>Ville</label> 
																	<select class="custom-select" name="ville" >
																		<c:forEach items="${ sessionScope.SESSION_VILLES }" var="element" >
																			
																			<option value="${ element.getCodeVille() }"><c:out value="${ element.getNom() }" /></option>
																	
																		</c:forEach>

														             </select>
														             
																	
																</div>
																<span class="text-danger">${FORM.errors["ville"]}</span>
																
															</div>
														</div>
         <div>
            <div class="w-full flex flex-col mt-8">
               <label class="font-semibold leading-none">Descreption
               d'offre</label>
               <textarea name="AAAAA" 
                placeholder="Décrivez votre offre ..."
                  class="h-40 text-base leading-none text-gray-900 p-3 focus:oultine-none focus:border-blue-700 mt-4 bg-gray-100 border rounded border-gray-200"></textarea>
            </div>
         </div>
         				
												<div class="row">
													<div class="col mb-3">
														<div class="galr mb-2">
															<b>Votre Photos</b>
														</div>

														<br>


														<div class="container">
															<div class="row">
																<div class="col-sm-3 imgUp">
																	<div class="imagePreview"></div>
																	<label class="btn btn-primary"> Upload<input
																		type="file" name="file" multiple accept="image/*"
																		class="uploadFile img" value="Upload Photo"
																		style="width: 0px; height: 0px; overflow: hidden;">
																	</label> <i class="fa fa-times del"></i>
																</div>
																<!-- col-2 -->
																<i class="fa fa-plus imgAdd"></i>
															</div>
															<!-- row -->
														</div>
														<!-- container -->



													</div>
												</div>

                           <div class="row">
												<div class="col d-flex justify-content-end">
													<button class="btn btn-primary" type="submit">Create
														Offer</button>
												</div>
											</div>
                           </form> 
                            </div>
                            
                             </div>
                              </div>
                               
         
      <script type= "text/javascript" src="JAVASCRIPT/CreateOffer.js"></script>
   </body>
</html>