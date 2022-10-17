<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../assets/css/style.css">
    <!-- End layout styles -->
    <script src="https://code.iconify.design/2/2.1.0/iconify.min.js"></script>
    <style>
        td {
            max-width: 200px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
    </style>
</head>

<body>
    <div class="container-scroller">

        <!-- partial:partials/_navbar.html -->
        <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                <a class="navbar-brand brand-logo" href="index.html"><img src="../IMAGES/Logo.png" alt="logo" /></a>
                <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../IMAGES/Logo-mini.png" alt="logo" /></a>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-stretch">
                <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                    <span class="mdi mdi-menu"></span>
                </button>

                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item nav-profile dropdown">
                        <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                            <div class="nav-profile-img">
                                <img alt="${sessionScope.SESSION_ADMIN.getNom()} ${sessionScope.SESSION_ADMIN.getPrenom()}" src="https://ui-avatars.com/api/?name=${sessionScope.SESSION_ADMIN.getPrenom()}+${sessionScope.SESSION_ADMIN.getNom()}&background=40d1f2&color=fff" alt="image">
                            </div>
                            <div class="nav-profile-text">
                                <p class="my-1 pt-2 text-black">${sessionScope.SESSION_ADMIN.getNom()} ${sessionScope.SESSION_ADMIN.getPrenom()}</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                   <span class="mdi mdi-menu"></span>
                </button>
            </div>
        </nav>
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            <!-- partial:partials/_sidebar.html -->
            <nav class="sidebar sidebar-offcanvas" id="sidebar">
                <ul class="nav">
                    <li class="nav-item mt-4">
                        <a class="nav-link" href="Dashboard">
                            <span class="menu-title">tableau de bord</span>
                            <i class="mdi mdi-home menu-icon"></i>
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link " href="Users">
                            <span class="menu-title">Utilisateurs</span>
                            <i class="mdi mdi-contacts menu-icon"></i>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Offres">
                            <span class="menu-title">Offres</span>
                            <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Logout">
                            <span class="menu-title">Se Déconnecter</span>
                            <i class="mdi mdi-power menu-icon"></i>
                        </a>
                    </li>


                </ul>
            </nav>
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="page-header">
                        <h3 class="page-title">
                            <span class="page-title-icon bg-gradient-primary text-white me-2">
                              <i class="mdi mdi-format-list-bulleted"></i>
                            </span> Offres
                        </h3>

                    </div>
                    <div class="row">
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">

                                    <table width="100%" class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th> Titre </th>
                                                <th> Description </th>
                                                <th> Utilisateur </th>
                                                <th> Date De Creation </th>
                                                <th> Action </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="offer" items="${requestScope.offers }" varStatus="loop"> 
	                                            <tr>
	                                                <td class="py-1">
	                                                	${offer.get(0)}
	                                                </td>
	                                                <td width="100"> ${offer.get(1)} </td>
	                                                <td>
	                                                    ${offer.get(4) }
	                                                </td>
	                                                <td> ${offer.get(5) } </td>
	                                                <td>
	                                                    <form action="Offres" method="post">
	                                                        <input type="hidden" name="offerid" value="${ offer.get(6) }">
	                                                        <button type="submit" class="btn btn-gradient-danger btn-rounded btn-sm">Supprimé</button>
	                                                    </form>
	
	                                                </td>
	                                            </tr>
                                            </c:forEach>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

                <!-- partial -->
            </div>
            <!-- main-panel ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="../assets/vendors/chart.js/Chart.min.js"></script>
    <script src="../assets/js/jquery.cookie.js" type="text/javascript"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="../assets/js/off-canvas.js"></script>
    <script src="../assets/js/hoverable-collapse.js"></script>
    <script src="../assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="../assets/js/dashboard.js"></script>
    <script src="../assets/js/todolist.js"></script>
    <!-- End custom js for this page -->
</body>

</html>