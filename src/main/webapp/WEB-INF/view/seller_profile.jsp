<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Your Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

    <!--  chat style  -->
    <style type="text/css">
    	body {
			margin-top: 20px;
			background-color: #fafafa;
			
		}
        .chat_border{
            border: 1px solid #d4d4d4;
            border-radius: 5px;
            padding: 30px 50px;
        }
        .input_submet{
            text-align: center;
            margin: 20px auto;
            padding: 0 10px;
   
        }
        .write_msg{
            width: 85%;
            height: 45px;
            border: 1px solid #d4d4d4;
            border-radius: 5px;
            

            
            
        }


        .msg_container {
          border: 2px solid #dedede;
          background-color: #f1f1f1;
          border-radius: 5px;
          padding: 10px;
          margin: 10px 0;


        }
        
        .darker {
        
          border-color: #ccc;
          background-color: #ddd;
        }
        
        .msg_container::after {
          content: "";
          clear: both;
          display: table;
        }
        
        .msg_container img {
          float: left;
          max-width: 60px;
          width: 100%;
          margin-right: 20px;
          border-radius: 50%;
        }
        
        .msg_container img.right {
          float: right;
          margin-left: 20px;
          margin-right:0;
        }
        
        .time-right {
          float: right;
          color: #aaa;
        }
        
        .time-left {
          float: left;
          color: #999;
        }
        
        #photoPreview img {
		  width:200px;
		  border-radius: 50%;
			height:200px;
			background-position: center center;
		  background-size: cover;
			background-repeat: no-repeat;
			
		}
    </style>
</head>
<body style="background-color:#fafafa">
	<%@ include file="/WEB-INF/view/navbar.jsp" %>

<div class="container mt-5" style="margin-top:40px;">
    <div class="row">
        <div class="col-lg-3 col-md-4">
            <div class="text-center card-box">
                <div class="member-card">
                	<div
						id="photoPreview"
						class="d-flex justify-content-center align-items-center rounded">
						<img src="SellerImages/${SELLER.getPhotoProfil()}" alt="SellerImages/${SELLER.getPhotoProfil()}">
					</div>
                    

                    <div class="">
                        <h4 class="m-b-5">${SELLER.nom} ${SELLER.prenom}</h4>
                        <p class="text-muted" style="color: #1505ff;">${sessionScope.SESSION_PROFS.get(SELLER.getCodeProfession()-1).getNom()}</p>
                    </div>
                    
                    <br>
                    
                    <div class="text-left m-t-40">
                        <p class="text-muted font-13"><strong>Nom:</strong> <span class="m-l-15">${SELLER.nom}</span></p>
                        <p class="text-muted font-13"><strong>Prenom :</strong> <span class="m-l-15">${SELLER.prenom}</span></p>
                        <p class="text-muted font-13"><strong>CIN :</strong> <span class="m-l-15">${SELLER.CIN}</span></p>
                        <p class="text-muted font-13"><strong>Profession :</strong> <span class="m-l-15">${sessionScope.SESSION_PROFS.get(SELLER.getCodeProfession()-1).getNom()}</span></p>
                        
                        <p class="text-muted font-13"><strong>Telephone :</strong><span class="m-l-15">${SELLER.tel}</span></p>
                        <p class="text-muted font-13"><strong>Email :</strong> <span class="m-l-15">${SELLER.email}</span></p>
                        
                        
                        <p class="text-muted font-13"><strong>Ville :</strong> <span class="m-l-15">${sessionScope.SESSION_VILLES.get(SELLER.getCodeVille()-1).getNom()}</span></p>
                    	<c:if test="${ sessionScope.SELLER.getCodeUtilisateur() != sessionScope.SESSION_USER.getUser_code() }">
                    		<a style="background-color:#40d1f2; border-color:#40d1f2; margin-left: 20%;margin-top:20px;" class="btn btn-primary" href="ChatRoom?user_id=${ sessionScope.SELLER.getCodeUtilisateur() }">Contacter Seller</a>
                    	</c:if>
                    </div>

                    
                </div>
            </div> <!-- end card-box -->

            
        </div> <!-- end col -->


        <div class="col-md-8 col-lg-9">
            <div class="">
                <div class="">
                    <ul class="nav nav-tabs navtab-custom">
                        <li class="">
                            <a href="#home" data-toggle="tab" aria-expanded="false">
                                <span class="visible-xs"><i class="fa fa-user"></i></span>
                                <span class="hidden-xs">MES INFO</span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="#profile" data-toggle="tab" aria-expanded="true">
                                <span class="visible-xs"><i class="fa fa-photo"></i></span>
                                <span class="hidden-xs">GALERIE</span>
                            </a>
                        </li>
                       
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane" id="home">
                            <br>
                            <br>
                            <h3 style="color: #333333;">Mes expériences et compétences</h3>
                            <p class="m-b-5">
                                ${SELLER.information}
                            </p>

                            
                        </div>
                        <div class="tab-pane active" id="profile">
                            <div class="row">
                                <c:forEach items="${ GALERY }" var="element">

									
									<div class="col-sm-4">
	                                    <div class="gal-detail thumb">
	                                        <a href="#" class="image-popup" title="Screenshot-2">
	                                            <img src="SellerImages/${element.getPhotoPath()}" class="thumb-img" alt="work-thumbnail">
	                                        </a>
	                                        
	                                    </div>
                                	</div>

								</c:forEach>

                                
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div> <!-- end col -->
    </div>
    <!-- end row -->
</div>

<style type="text/css">
body{
    margin-top:20px;
    background:#f5f5f5;
}
/* ===========
   Profile
 =============*/
.card-box {
  padding: 20px;
  box-shadow: 0 2px 15px 0 rgba(0, 0, 0, 0.06), 0 2px 0 0 rgba(0, 0, 0, 0.02);
  -webkit-border-radius: 5px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  background-clip: padding-box;
  margin-bottom: 20px;
  background-color: #ffffff;
}
.header-title {
  text-transform: uppercase;
  font-size: 15px;
  font-weight: 600;
  letter-spacing: 0.04em;
  line-height: 16px;
  margin-bottom: 8px;
}


/* ===========
   Gallery
 =============*/
.portfolioFilter a {
  -moz-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
  -moz-transition: all 0.3s ease-out;
  -ms-transition: all 0.3s ease-out;
  -o-transition: all 0.3s ease-out;
  -webkit-box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
  -webkit-transition: all 0.3s ease-out;
  box-shadow: 0px 1px 2px 0px rgba(0, 0, 0, 0.1);
  color: #333333;
  padding: 5px 10px;
  display: inline-block;
  transition: all 0.3s ease-out;
}
.portfolioFilter a:hover {
  background-color: #228bdf;
  color: #ffffff;
}
.portfolioFilter a.current {
  background-color: #228bdf;
  color: #ffffff;
}
.thumb {
  background-color: #ffffff;
  border-radius: 3px;
  box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.1);
  margin-top: 30px;
  padding-bottom: 10px;
  padding-left: 10px;
  padding-right: 10px;
  padding-top: 10px;
  width: 100%;
}
.thumb-img {
  border-radius: 2px;
  overflow: hidden;
  width: 100%;
}
.gal-detail h4 {
  margin: 16px auto 10px auto;
  width: 80%;
  white-space: nowrap;
  display: block;
  overflow: hidden;
  text-overflow: ellipsis;
}
.gal-detail .ga-border {
  height: 3px;
  width: 40px;
  background-color: #228bdf;
  margin: 10px auto;
}




.tabs-vertical-env .tab-content {
  background: #ffffff;
  display: table-cell;
  margin-bottom: 30px;
  padding: 30px;
  vertical-align: top;
}
.tabs-vertical-env .nav.tabs-vertical {
  display: table-cell;
  min-width: 120px;
  vertical-align: top;
  width: 150px;
}
.tabs-vertical-env .nav.tabs-vertical li.active > a {
  background-color: #ffffff;
  border: 0;
}
.tabs-vertical-env .nav.tabs-vertical li > a {
  color: #333333;
  text-align: center;
  font-family: 'Roboto', sans-serif;
  font-weight: 500;
  white-space: nowrap;
}
.nav.nav-tabs > li.active > a {
  background-color: #ffffff;
  border: 0;
}
.nav.nav-tabs > li > a {
  background-color: transparent;
  border-radius: 0;
  border: none;
  color: #333333 !important;
  cursor: pointer;
  line-height: 50px;
  font-weight: 500;
  padding-left: 20px;
  padding-right: 20px;
  font-family: 'Roboto', sans-serif;
}
.nav.nav-tabs > li > a:hover {
  color: #228bdf !important;
}
.nav.tabs-vertical > li > a {
  background-color: transparent;
  border-radius: 0;
  border: none;
  color: #333333 !important;
  cursor: pointer;
  line-height: 50px;
  padding-left: 20px;
  padding-right: 20px;
}
.nav.tabs-vertical > li > a:hover {
  color: #228bdf !important;
}
.tab-content {
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  color: #777777;
}
.nav.nav-tabs > li:last-of-type a {
  margin-right: 0px;
}
.nav.nav-tabs {
  border-bottom: 0;
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}
.navtab-custom li {
  margin-bottom: -2px;
}
.navtab-custom li a {
  border-top: 2px solid transparent !important;
}
.navtab-custom li.active a {
  border-top: 2px solid #228bdf !important;
}
.nav-tab-left.navtab-custom li a {
  border: none !important;
  border-left: 2px solid transparent !important;
}
.nav-tab-left.navtab-custom li.active a {
  border-left: 2px solid #228bdf !important;
}
.nav-tab-right.navtab-custom li a {
  border: none !important;
  border-right: 2px solid transparent !important;
}
.nav-tab-right.navtab-custom li.active a {
  border-right: 2px solid #228bdf !important;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus,
.tabs-vertical-env .nav.tabs-vertical li.active > a {
  border: none;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:focus,
.nav-tabs > li.active > a:hover,
.tabs-vertical > li.active > a,
.tabs-vertical > li.active > a:focus,
.tabs-vertical > li.active > a:hover {
  color: #228bdf !important;
}

.nav.nav-tabs + .tab-content {
    background: #ffffff;
    margin-bottom: 20px;
    padding: 20px;
}
.progress.progress-sm .progress-bar {
    font-size: 8px;
    line-height: 5px;
}
</style>

<script type="text/javascript">

</script>
</body>
</html>