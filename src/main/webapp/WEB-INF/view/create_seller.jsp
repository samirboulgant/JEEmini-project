<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
<title>becom a seller</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- <script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script> -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	margin-top: 20px;
	background-color: #edebeb;
}

#photoPreview{
	
	
	background-color: rgb(233, 236, 239);
	
	
	

}
#photoPreview img {
  width:180px;
  border-radius: 5px;
	height: 180px;
	background-position: center center;
  background-size: cover;
	background-repeat: no-repeat;
	
}

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
</style>
</head>
<body style="background-color:#f8f8f8;">
	<%@ include file="/WEB-INF/view/navbar.jsp" %>
	
	<form style="margin-top:50px" method="post" action="/JEE_mini_project/CreateSeller"
		enctype="multipart/form-data" class="container">
		<div class="row flex-lg-nowrap">


			<div class="col">
				<div class="row">
					<div class="col mb-3">
						<div class="card">
							<div class="card-body">
								<div class="e-profile">
									<div class="row" style="margin-left:5px;">
										<div class="col-12 col-sm-auto mb-3">
											<div class="mx-auto" style="">
												<div
													id="photoPreview"
													class="d-flex justify-content-center align-items-center rounded">
													<img id="file-ip-1-preview">
												</div>
											</div>
										</div>
										<div
											class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
											<div class="text-center text-sm-left mb-2 mb-sm-0">
												<h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">${ sessionScope.SESSION_USER.getNom() }
													${ sessionScope.SESSION_USER.getPrenom() }</h4>

												<br>

												<div class="mt-2">


													<label class="btn btn-primary"> <i
														class="fa fa-fw fa-camera"></i> <span>Change Photo</span>
														<input type="file" name="profile_photo" accept="image/*"
														class="uploadFile img" value="Change Photo" onchange="showPreview(event);"
														style="width: 0px; height: 0px; overflow: hidden;">
													</label>


												</div>
											</div>

										</div>
									</div>
									<ul class="nav nav-tabs">
										<li class="nav-item"><a href="" class="active nav-link">Settings</a></li>
									</ul>
									<div class="tab-content pt-3">
										<div class="tab-pane active">
											<div class="form">
												<div class="row">
													<div class="col">

														<div class="row">
															<div class="col">
																<div class="form-group">
																	<label>Profession</label> <select class="custom-select"
																		name="profession">
																		<c:forEach items="${ sessionScope.SESSION_PROFS }"
																			var="element">

																			<option value="${ element.getCodeProfession() }"><c:out
																					value="${ element.getNom() }" /></option>

																		</c:forEach>

																	</select>


																</div>
																<span class="text-danger">${FORM.errors["profession"]}</span>

															</div>
														</div>

														<div class="row">
															<div class="col">
																<div class="form-group">
																	<label>Ville</label> <select class="custom-select"
																		name="ville">
																		<c:forEach items="${ sessionScope.SESSION_VILLES }"
																			var="element">

																			<option value="${ element.getCodeVille() }"><c:out
																					value="${ element.getNom() }" /></option>

																		</c:forEach>

																	</select>


																</div>
																<span class="text-danger">${FORM.errors["ville"]}</span>

															</div>
														</div>

														<div class="row">
															<div class="col">
																<div class="form-group">
																	<label>CIN</label> <input class="form-control"
																		name="cin" type="text" placeholder="FD321321"
																		value="${SELLER.CIN}">
																</div>
																<span class="text-danger">${FORM.errors["cin"]}</span>

															</div>
														</div>


														<div class="row">
															<div class="col">
																<div class="form-group">
																	<label>Telephone</label> <input class="form-control"
																		name="tel" type="text" placeholder="0612312323"
																		value="${SELLER.tel}">
																</div>
																<span class="text-danger">${FORM.errors["tel"]}</span>

															</div>
														</div>
														<div class="row">
															<div class="col mb-3">
																<div class="form-group">
																	<label>Parle de toi</label>
																	<textarea class="form-control" rows="5"
																		name="information" placeholder="My Bio">${SELLER.information}</textarea>
																</div>
																<span class="text-danger">${FORM.errors["information"]}</span>

															</div>
														</div>
													</div>
												</div>





												<div class="row">
													<div class="col mb-3">
														<div class="mb-2">
															<b>Galerie</b>
														</div>

														<br>


														<div class="container">
															<div class="row">
																<div class="col-sm-3 imgUp">
																	<div class="imagePreview"></div>
																	<label class="btn btn-primary"> Upload<input
																		type="file" name="images" accept="image/*"
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

											</div>
											<div class="row">
												<div class="col d-flex justify-content-end">
													<button class="btn btn-primary" type="submit">Create
														Seller</button>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


			</div>

		</div>
	</form>

	<script type="text/javascript">
		$(".imgAdd")
				.click(
						function() {
							$(this)
									.closest(".row")
									.find('.imgAdd')
									.before(
											'<div class="col-sm-3 imgUp"> <div class="imagePreview"></div> <label class="btn btn-primary"> Upload<input type="file" name="images" accept="image/*" class="uploadFile img" value="Upload Photo" style="width: 0px; height: 0px; overflow: hidden;"></label> <i class="fa fa-times del"></i></div>');
						});
		$(document).on("click", "i.del", function() {
			$(this).parent().remove();
		});
		$(function() {
			$(document).on(
					"change",
					".uploadFile",
					function() {
						var uploadFile = $(this);
						var files = !!this.files ? this.files : [];
						if (!files.length || !window.FileReader)
							return; // no file selected, or no FileReader support

						if (/^image/.test(files[0].type)) { // only image file
							var reader = new FileReader(); // instance of the FileReader
							reader.readAsDataURL(files[0]); // read the local file

							reader.onloadend = function() { // set image data as background of div
								//alert(uploadFile.closest(".upimage").find('.imagePreview').length);
								uploadFile.closest(".imgUp").find(
										'.imagePreview').css(
										"background-image",
										"url(" + this.result + ")");
							}
						}

					});
		});
		
		
		function showPreview(event){
			  if(event.target.files.length > 0){
			    var src = URL.createObjectURL(event.target.files[0]);
			    var preview = document.getElementById("file-ip-1-preview");
			    preview.src = src;
			    preview.style.display = "block";
			  }
			}
		
	</script>



</body>
</html>