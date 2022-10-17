<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Brikol.ma</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">

    <!--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <c:set var = "string" value = "${fn:split(pageContext.request.requestURI, '/')}" />
    <c:if test="${string[fn:length(string)-1] != 'offers.jsp' && string[fn:length(string)-1] != 'chatRoom.jsp'}">
    	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   	 	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </c:if>
 	
    <link rel="stylesheet" href="CSS/navbar.css">
    <!-- <script>
		// Prevent dropdown menu from closing when click inside the form
		$(document).on("click", ".action-buttons .dropdown-menu", function(e){
			e.stopPropagation();
		});
		</script> -->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body class="body1">
    <nav class="nvbar nvbar-expand-lg nvbar-light">
        <a href="" class="nvbar-brand">Brikol<b>.ma</b></a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
        <!-- Collection of nav links, forms, and other content for toggling -->
        <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
            <div class="navbar-nav">
                <a href="Homepage" class="nav-item nav-link"><strong>Accueil</strong></a>
                <a href="cantact" class="nav-item nav-link">Contactez-nous</a>
                
                <a href="AboutUs" class="nav-item nav-link">Qui Sommes nous ?</a>
               
            </div>
            <div class="ml-auto phone-call-navbar">
                <i class="zmdi zmdi-phone"></i>
                <a href="tel:0654490681">Appelez-nous 06 54 49 06 81</a>
            </div>
            <c:if test="${sessionScope.SESSION_USER.getStatusAdmin() == 0}">
            	<div class="nvbar-nav ml-auto">
	                <div class="nav-item dropdown">
	                    <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img src="https://ui-avatars.com/api/?name=${sessionScope.SESSION_USER.getPrenom()}+${sessionScope.SESSION_USER.getNom()}&background=40d1f2&color=fff" class="avatar" alt="Avatar">${sessionScope.SESSION_USER.getNom()} ${sessionScope.SESSION_USER.getPrenom()} <b class="caret"></b></a>
	                    <div class="dropdown-menu">
	                        <a href="CreerOffre" class="dropdown-item"><i class="fa fa-work"></i> Créer une offre</a>
	                        <a href="Sellers" class="dropdown-item"><i class="fa fa-work"></i> Sellers </a>
	                        <a href="CreateSeller" class="dropdown-item"><i class="fa fa-user-o"></i> Devenir Prestataire</a>
	                        <a href="ChatRoom" class="dropdown-item"><i class="fa fa-envelope-o"></i> Messagerie</a>
	                        <div class="dropdown-divider"></div>
	                        <a href="Logout" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Se déconnecter</a>
	                    </div>
	                </div>
	            </div>
            </c:if>
            
            <c:if test="${sessionScope.SESSION_USER.getStatusAdmin() == 1}">
            	<div class="nvbar-nav ml-auto">
                <div class="nav-item dropdown">
                    <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action"><img src="https://ui-avatars.com/api/?name=${sessionScope.SESSION_USER.getPrenom()}+${sessionScope.SESSION_USER.getNom()}&background=40d1f2&color=fff" class="avatar" alt="Avatar">${sessionScope.SESSION_USER.getNom()} ${sessionScope.SESSION_USER.getPrenom()} <b class="caret"></b></a>
                    <div class="dropdown-menu">
                        
                         <c:choose>
         
					         <c:when test = "${sessionScope.STATUS_SELLER == 1}">
					            <a href="SellerProfile" class="dropdown-item"><i class="fa fa-work"></i> Profile</a>
					            <a href="Offers" class="dropdown-item"><i class="fa fa-work"></i> Offres</a>
					            <a href="ChatRoom" class="dropdown-item"><i class="fa fa-envelope-o"></i> Messagerie</a>
		                        <a href="EditSellerProfile" class="dropdown-item"><i class="fa fa-sliders"></i> Paramètres</a>
		                        <div class="dropdown-divider"></div>
		                        <a href="SwitchToBuyer" class="dropdown-item"><i class="fa fa-user-o"></i> Switch to Buyer</a>
					         </c:when>

					         <c:otherwise>
					            <a href="CreerOffre" class="dropdown-item"><i class="fa fa-work"></i> Créer une offre</a>
					            <a href="Sellers" class="dropdown-item"><i class="fa fa-work"></i> Sellers </a>
					            <a href="ChatRoom" class="dropdown-item"><i class="fa fa-envelope-o"></i> Messagerie</a>
					            <div class="dropdown-divider"></div>
		                        <a href="SwitchToSeller" class="dropdown-item"><i class="fa fa-user-o"></i> Switch to Seller</a>
					            
					         </c:otherwise>
					      </c:choose>
					      <div class="dropdown-divider"></div>
                        <a href="Logout" class="dropdown-item"><i class="material-icons">&#xE8AC;</i> Se déconnecter</a>
                    </div>
                </div>
            </div>
            </c:if>
            
            <c:if test="${ sessionScope.SESSION_USER == null }">
            	<a href="Login" class="nav-link ml-auto ">Connexion</a>
            	<a href="Signup" class="btn1 btn1-primary sign-up-btn">S'inscrire</a>
            </c:if>
            
            

        </div>
        
    </nav>
</body>

</html>