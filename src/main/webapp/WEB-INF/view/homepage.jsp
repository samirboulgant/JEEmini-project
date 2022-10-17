<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />
	<title>Homepage</title>
	<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.4/dist/tailwind.min.css" />
	<!--Replace with your tailwind.css once created-->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700"
		rel="stylesheet" />
	<!-- Define your gradient here - use online tools to find a gradient matching your branding-->
	<style>
	.gradient {
		background: linear-gradient(90deg, #2f99c4 0%, #a4effc 100%);
	}
	
	.some_padding {
		padding: 20px;
	}
	

	.categories-container {
		position: relative;
		text-align: center;
		color: white;
		cursor: pointer;
	}
	
	.categories-text {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		font-size: 20px;
	}
	
	.filter-cat {
		filter: brightness(50%);
	}
	</style>
	
	<style>


		/* The Modal (background) */
		.modal {
		  display: none; /* Hidden by default */
		  position: fixed; /* Stay in place */
		  z-index: 1; /* Sit on top */
		  padding-top: 100px; /* Location of the box */
		  left: 0;
		  top: 0;
		  width: 100%; /* Full width */
		  height: 100%; /* Full height */
		  overflow: auto; /* Enable scroll if needed */
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
		  text-align:center;
		}
		
		/* Modal Content (image) */
		.modal-content {
		  margin: auto;
		  display: block;
		  width: 100%;
		  max-width: 1000px;
		}
		
		/* Caption of Modal Image */
		
		
		/* Add Animation */
		
		
		@-webkit-keyframes zoom {
		  from {-webkit-transform:scale(0)} 
		  to {-webkit-transform:scale(1)}
		}
		
		@keyframes zoom {
		  from {transform:scale(0)} 
		  to {transform:scale(1)}
		}
		
		/* The Close Button */
		.close {
		  position: absolute;
		  top: 15px;
		  right: 35px;
		  color: #f1f1f1;
		  font-size: 40px;
		  font-weight: bold;
		  transition: 0.3s;
		}
		
		.close:hover,
		.close:focus {
		  color: #bbb;
		  text-decoration: none;
		  cursor: pointer;
		}
		
		/* 100% Image Width on Smaller Screens */
		@media only screen and (max-width: 700px){
		  .modal-content {
		    width: 100%;
		  }
		}
</style>
</head>
<body class="leading-normal tracking-normal text-white gradient" style="font-family: 'Source Sans Pro', sans-serif;">
	
	<!--Nav-->
	<%@ include file="/WEB-INF/view/navbar.jsp" %>

	<div class="pt-24">
		<div
			class="some_padding container px-3 mx-auto flex flex-wrap flex-col md:flex-row items-center">
			<!--Left Col-->
			<div
				class="some_padding flex flex-col w-full md:w-3/5 justify-center items-start text-center md:text-left">
				<p class="uppercase tracking-loose w-full">Bienvenue à Brikol.ma!</p>
				<h1 class="my-4 text-5xl font-bold leading-tight">Les artisans sont à votre disposition!</h1>
				<p class="leading-normal text-2xl mb-8">A Brikol.ma, vous pouvez lancer des offres selon vos besoins pour les artisans en tant que client, ou vous pouvez consulter les offres actuelles pour offrir vos services aux clients que vous voulez en tant que artisan.</p>
			</div>
			<!--Right Col-->
			<div class="w-full md:w-2/5 py-6 text-center"
				style="z-index: 1 !important;">
				<!-- <video class="w-full md:w-5/5 z-1" controls="controls"
					style="z-index: 1 !important;">
					<source src="IMAGES/brikol-1080p-2.mp4" type="video/mp4">
				</video> -->
				
				<div style="position:relative;">
					<div  class="carft-svg-holder"><img _ngcontent-serverapp-c4="" alt="crraft" src="IMAGES/image.svg"></div>
					<div id="myImg" onclick="playVid();" style="position:absolute; top:200px" class="video-button"><img onclick="playVid();" alt="video-button" src="https://www.bricall.ma/assets/images/home-page/how-it-works/video-button.svg"></div>
				</div>
				
			</div>
		</div>
	</div>
	<div class="relative -mt-12 lg:-mt-24">
		<svg viewBox="0 0 1428 174" version="1.1"
			xmlns="http://www.w3.org/2000/svg"
			xmlns:xlink="http://www.w3.org/1999/xlink">
        <g stroke="none" stroke-width="1" fill="none"
				fill-rule="evenodd">
          <g transform="translate(-2.000000, 44.000000)" fill="#FFFFFF"
				fill-rule="nonzero">
            <path
				d="M0,0 C90.7283404,0.927527913 147.912752,27.187927 291.910178,59.9119003 C387.908462,81.7278826 543.605069,89.334785 759,82.7326078 C469.336065,156.254352 216.336065,153.6679 0,74.9732496"
				opacity="0.100000001"></path>
            <path
				d="M100,104.708498 C277.413333,72.2345949 426.147877,52.5246657 546.203633,45.5787101 C666.259389,38.6327546 810.524845,41.7979068 979,55.0741668 C931.069965,56.122511 810.303266,74.8455141 616.699903,111.243176 C423.096539,147.640838 250.863238,145.462612 100,104.708498 Z"
				opacity="0.100000001"></path>
            <path d="M1046,51.6521276 C1130.83045,29.328812 1279.08318,17.607883 1439,40.1656806 L1439,120 C1271.17211,77.9435312 1140.17211,55.1609071 1046,51.6521276 Z" id="Path-4" opacity="0.200000003"></path>
          </g>
          <g transform="translate(-4.000000, 76.000000)" fill="#FFFFFF"
				fill-rule="nonzero">
            <path
				d="M0.457,34.035 C57.086,53.198 98.208,65.809 123.822,71.865 C181.454,85.495 234.295,90.29 272.033,93.459 C311.355,96.759 396.635,95.801 461.025,91.663 C486.76,90.01 518.727,86.372 556.926,80.752 C595.747,74.596 622.372,70.008 636.799,66.991 C663.913,61.324 712.501,49.503 727.605,46.128 C780.47,34.317 818.839,22.532 856.324,15.904 C922.689,4.169 955.676,2.522 1011.185,0.432 C1060.705,1.477 1097.39,3.129 1121.236,5.387 C1161.703,9.219 1208.621,17.821 1235.4,22.304 C1285.855,30.748 1354.351,47.432 1440.886,72.354 L1441.191,104.352 L1.121,104.031 L0.457,34.035 Z"></path>
          </g>
        </g>
      </svg>
	</div>
	<section class="bg-white  py-8">
		<div class="container max-w-5xl mx-auto m-8">
			<h1
				class="w-full my-2 text-5xl font-bold leading-tight text-center text-gray-800">
				Nos catégories</h1>
			<div class="w-full text-center pb-8">
				<svg class="mx-auto" width="48" height="42" viewBox="0 0 48 42"
					fill="none" xmlns="http://www.w3.org/2000/svg">
              <path
						d="M16.6153 19.154H10.1537C9.38437 19.154 8.73037 18.8849 8.19185 18.3463C7.65363 17.8078 7.38417 17.154 7.38417 16.3845V15.4619C7.38417 13.4233 8.10546 11.6831 9.54795 10.2406C10.9903 8.79859 12.7309 8.0773 14.7693 8.0773H16.6153C17.1152 8.0773 17.5477 7.89453 17.9133 7.52929C18.2786 7.16384 18.4613 6.73131 18.4613 6.23128V2.53864C18.4613 2.03872 18.2785 1.60578 17.9133 1.24034C17.5478 0.875398 17.1153 0.692322 16.6153 0.692322H14.7693C12.7691 0.692322 10.8608 1.08212 9.04327 1.86059C7.22595 2.63958 5.65404 3.69257 4.32694 5.01967C2.99994 6.34616 1.94726 7.91817 1.16837 9.7357C0.389491 11.553 0 13.4618 0 15.4618V35.769C0 37.3083 0.538216 38.6152 1.61515 39.6926C2.69219 40.7693 4.00019 41.3076 5.53856 41.3076H16.616C18.1542 41.3076 19.4618 40.7693 20.539 39.6926C21.6157 38.6152 22.1542 37.3083 22.1542 35.769V24.6926C22.1542 23.1536 21.6157 21.8466 20.5383 20.7692C19.4616 19.6925 18.1535 19.154 16.6153 19.154Z"
						fill="#2865E9" />
              <path
						d="M46.3856 20.7692C45.309 19.6925 44.0013 19.154 42.4626 19.154H36.0011C35.2322 19.154 34.5776 18.8849 34.04 18.3463C33.5012 17.8078 33.2323 17.154 33.2323 16.3845V15.4619C33.2323 13.4233 33.9536 11.6831 35.3954 10.2406C36.8372 8.79859 38.5777 8.0773 40.6171 8.0773H42.4627C42.9627 8.0773 43.3955 7.89453 43.7608 7.52929C44.1258 7.16384 44.3092 6.73131 44.3092 6.23128V2.53864C44.3092 2.03872 44.1259 1.60578 43.7608 1.24034C43.3956 0.875398 42.9628 0.692322 42.4627 0.692322H40.6171C38.6158 0.692322 36.7079 1.08212 34.8899 1.86059C33.0729 2.63958 31.5015 3.69257 30.1744 5.01967C28.8473 6.34616 27.7941 7.91817 27.0155 9.7357C26.2368 11.553 25.8468 13.4618 25.8468 15.4618V35.769C25.8468 37.3083 26.3855 38.6152 27.4622 39.6926C28.5389 40.7693 29.8466 41.3076 31.3852 41.3076H42.462C44.0006 41.3076 45.3082 40.7693 46.3849 39.6926C47.4623 38.6152 47.9999 37.3083 47.9999 35.769V24.6926C48 23.1535 47.4623 21.8466 46.3856 20.7692Z"
						fill="#2865E9" />
          </svg>
			</div>
			<div
				class="pt-5 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/Tapisserie.jpg" alt="Tapisserie">
						<div class="categories-text">Tapisserie</div>
					</div>
				</div>
				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/aluminium.jpg" alt="Aluminium">
						<div class="categories-text">Aluminium</div>
					</div>
				</div>
				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/Meca.jpg" alt="maçonnerie">
						<div class="categories-text">Mécanicien</div>
					</div>
				</div>
				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/jardinage.jpg" alt="jardinage">
						<div class="categories-text">Jardinage</div>
					</div>
				</div>
				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/camera.jpg" alt="Camera">
						<div class="categories-text">Camera</div>
					</div>
				</div>

				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/electricite.jpg" alt="Electricité">
						<div class="categories-text">Electricité</div>
					</div>
				</div>

				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/peinture.png" alt="Peinture">
						<div class="categories-text">Peinture</div>
					</div>
				</div>

				<div
					class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col h-40 md:flex-row">
					<div class="w-full h-40 categories-container">
						<img class="object-center object-cover w-full h-full filter-cat"
							src="IMAGES/plombier.jpg" alt="Plombier">
						<div class="categories-text">Plombier</div>
					</div>
				</div>

			</div>
		</div>
    <div style="margin-top:100px;" class=" text-center pb-4">
        <h2 class="text-base font-bold text-indigo-600">
           
        </h2>
        <h1 class="font-bold text-3xl md:text-4xl lg:text-5xl font-heading text-gray-900">
            Notre Equipe
        </h1>
    </div>
    <div class="w-full text-center pb-8">
				<svg class="mx-auto" width="48" height="42" viewBox="0 0 48 42"
					fill="none" xmlns="http://www.w3.org/2000/svg">
              <path
						d="M16.6153 19.154H10.1537C9.38437 19.154 8.73037 18.8849 8.19185 18.3463C7.65363 17.8078 7.38417 17.154 7.38417 16.3845V15.4619C7.38417 13.4233 8.10546 11.6831 9.54795 10.2406C10.9903 8.79859 12.7309 8.0773 14.7693 8.0773H16.6153C17.1152 8.0773 17.5477 7.89453 17.9133 7.52929C18.2786 7.16384 18.4613 6.73131 18.4613 6.23128V2.53864C18.4613 2.03872 18.2785 1.60578 17.9133 1.24034C17.5478 0.875398 17.1153 0.692322 16.6153 0.692322H14.7693C12.7691 0.692322 10.8608 1.08212 9.04327 1.86059C7.22595 2.63958 5.65404 3.69257 4.32694 5.01967C2.99994 6.34616 1.94726 7.91817 1.16837 9.7357C0.389491 11.553 0 13.4618 0 15.4618V35.769C0 37.3083 0.538216 38.6152 1.61515 39.6926C2.69219 40.7693 4.00019 41.3076 5.53856 41.3076H16.616C18.1542 41.3076 19.4618 40.7693 20.539 39.6926C21.6157 38.6152 22.1542 37.3083 22.1542 35.769V24.6926C22.1542 23.1536 21.6157 21.8466 20.5383 20.7692C19.4616 19.6925 18.1535 19.154 16.6153 19.154Z"
						fill="#2865E9" />
              <path
						d="M46.3856 20.7692C45.309 19.6925 44.0013 19.154 42.4626 19.154H36.0011C35.2322 19.154 34.5776 18.8849 34.04 18.3463C33.5012 17.8078 33.2323 17.154 33.2323 16.3845V15.4619C33.2323 13.4233 33.9536 11.6831 35.3954 10.2406C36.8372 8.79859 38.5777 8.0773 40.6171 8.0773H42.4627C42.9627 8.0773 43.3955 7.89453 43.7608 7.52929C44.1258 7.16384 44.3092 6.73131 44.3092 6.23128V2.53864C44.3092 2.03872 44.1259 1.60578 43.7608 1.24034C43.3956 0.875398 42.9628 0.692322 42.4627 0.692322H40.6171C38.6158 0.692322 36.7079 1.08212 34.8899 1.86059C33.0729 2.63958 31.5015 3.69257 30.1744 5.01967C28.8473 6.34616 27.7941 7.91817 27.0155 9.7357C26.2368 11.553 25.8468 13.4618 25.8468 15.4618V35.769C25.8468 37.3083 26.3855 38.6152 27.4622 39.6926C28.5389 40.7693 29.8466 41.3076 31.3852 41.3076H42.462C44.0006 41.3076 45.3082 40.7693 46.3849 39.6926C47.4623 38.6152 47.9999 37.3083 47.9999 35.769V24.6926C48 23.1535 47.4623 21.8466 46.3856 20.7692Z"
						fill="#2865E9" />
          </svg>
			</div>
    <div class="pt-12 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <div class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col justify-center items-center">
            
            <img class="rounded-full object-center h-auto w-1/2" src="IMAGES/ahenna.png" alt="photo">
            
            <div class="text-center py-8 sm:py-6">
                <p class="text-xl text-gray-700 font-bold mb-2">Mohammed Ahenna</p>
                <p class="text-base text-gray-400 font-normal">Développeur Full-Stack</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col justify-center items-center">
            
            <img class="rounded-full object-center  h-auto w-1/2" src="IMAGES/samir.png" alt="photo">
            
            <div class="text-center py-8 sm:py-6">
                <p class="text-xl text-gray-700 font-bold mb-2">Samir Boulguant</p>
                <p class="text-base text-gray-400 font-normal">Développeur Full-Stack</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col justify-center items-center">
            
                <img class="rounded-full object-center h-auto w-1/2" src="IMAGES/charraf.png" alt="photo">
            
            <div class="text-center py-8 sm:py-6">
                <p class="text-xl text-gray-700 font-bold mb-2">Mohammed Charaf Eddine</p>
                <p class="text-base text-gray-400 font-normal">Développeur Full-Stack</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col justify-center items-center">
            
            <img class="rounded-full object-center h-auto w-1/2" src="IMAGES/haitam.png" alt="photo">
            
            <div class="text-center py-8 sm:py-6">
                <p class="text-xl text-gray-700 font-bold mb-2">Aboukherraz Haitam</p>
                <p class="text-base text-gray-400 font-normal">Développeur Full-Stack</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col justify-center items-center">
           
                <img class="rounded-full object-center h-auto w-1/2" src="IMAGES/naima.png" alt="photo">
           
            <div class="text-center py-8 sm:py-6">
                <p class="text-xl text-gray-700 font-bold mb-2">Naima Bourhym</p>
                <p class="text-base text-gray-400 font-normal">Développeur Full-Stack</p>
            </div>
        </div>
        <div class="w-full bg-white rounded-lg sahdow-lg overflow-hidden flex flex-col justify-center items-center">
            
                <img class="rounded-full object-center h-auto w-1/2" src="IMAGES/soufiane.jpg" alt="photo">
            
            <div class="text-center py-8 sm:py-6">
                <p class="text-xl text-gray-700 font-bold mb-2">Soufiane Amghar</p>
                <p class="text-base text-gray-400 font-normal">Développeur Full-Stack</p>
            </div>
        </div>
    </div>
</section>
	<!-- Change the colour #f8fafc to match the previous section colour -->
	<svg class="wave-top" viewBox="0 0 1439 147" version="1.1"
		xmlns="http://www.w3.org/2000/svg"
		xmlns:xlink="http://www.w3.org/1999/xlink">
      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
        <g transform="translate(-1.000000, -14.000000)"
			fill-rule="nonzero">
          <g class="wave" fill="#ffffff">
            <path
			d="M1440,84 C1383.555,64.3 1342.555,51.3 1317,45 C1259.5,30.824 1206.707,25.526 1169,22 C1129.711,18.326 1044.426,18.475 980,22 C954.25,23.409 922.25,26.742 884,32 C845.122,37.787 818.455,42.121 804,45 C776.833,50.41 728.136,61.77 713,65 C660.023,76.309 621.544,87.729 584,94 C517.525,105.104 484.525,106.438 429,108 C379.49,106.484 342.823,104.484 319,102 C278.571,97.783 231.737,88.736 205,84 C154.629,75.076 86.296,57.743 0,32 L0,0 L1440,0 L1440,84 Z"></path>
          </g>
          <g transform="translate(1.000000, 15.000000)" fill="#FFFFFF">
            <g
			transform="translate(719.500000, 68.500000) rotate(-180.000000) translate(-719.500000, -68.500000) ">
              <path
			d="M0,0 C90.7283404,0.927527913 147.912752,27.187927 291.910178,59.9119003 C387.908462,81.7278826 543.605069,89.334785 759,82.7326078 C469.336065,156.254352 216.336065,153.6679 0,74.9732496"
			opacity="0.100000001"></path>
              <path
			d="M100,104.708498 C277.413333,72.2345949 426.147877,52.5246657 546.203633,45.5787101 C666.259389,38.6327546 810.524845,41.7979068 979,55.0741668 C931.069965,56.122511 810.303266,74.8455141 616.699903,111.243176 C423.096539,147.640838 250.863238,145.462612 100,104.708498 Z"
			opacity="0.100000001"></path>
              <path
			d="M1046,51.6521276 C1130.83045,29.328812 1279.08318,17.607883 1439,40.1656806 L1439,120 C1271.17211,77.9435312 1140.17211,55.1609071 1046,51.6521276 Z"
			opacity="0.200000003"></path>
            </g>
          </g>
        </g>
      </g>
    </svg>
	<section class="container mx-auto text-center py-6 mb-12">
	<c:if test="${sessionScope.SESSION_USER == null}">
		<h1
			class="w-full my-2 text-5xl font-bold leading-tight text-center text-white">
			Qu'est-ce que vous attendez ?</h1>
		<div class="w-full mb-4">
			<div
				class="h-1 mx-auto bg-white w-1/6 opacity-25 my-0 py-0 rounded-t"></div>
		</div>
		<h3 class="my-4 text-3xl leading-tight">Rejoingez la communauté !
		</h3>
		<a href="Signup"><button
			class="mx-auto lg:mx-0 hover:underline bg-white text-gray-800 font-bold rounded-full my-6 py-4 px-8 shadow-lg focus:outline-none focus:shadow-outline transform transition hover:scale-105 duration-300 ease-in-out">
			S'inscrire</button></a>
	</c:if>
	<c:if test="${sessionScope.SESSION_USER.getStatusAdmin() == 1}">
		<c:choose>
			<c:when test = "${sessionScope.STATUS_SELLER == 0}">
			<h1
				class="w-full my-2 text-5xl font-bold leading-tight text-center text-white">
				Do you have skills to share ?</h1>
			<div class="w-full mb-4">
				<div
					class="h-1 mx-auto bg-white w-1/6 opacity-25 my-0 py-0 rounded-t"></div>
			</div>
			<h3 class="my-4 text-3xl leading-tight">Become a Seller !
			</h3>
			<a href="SwitchToSeller"><button
				class="mx-auto lg:mx-0 hover:underline bg-white text-gray-800 font-bold rounded-full my-6 py-4 px-8 shadow-lg focus:outline-none focus:shadow-outline transform transition hover:scale-105 duration-300 ease-in-out">
				Switch To Seller</button></a>
		</c:when>
		<c:otherwise>
			<h1
				class="w-full my-2 text-5xl font-bold leading-tight text-center text-white">
				Well, What are you waiting for ?</h1>
			<div class="w-full mb-4">
				<div
					class="h-1 mx-auto bg-white w-1/6 opacity-25 my-0 py-0 rounded-t"></div>
			</div>
			<h3 class="my-4 text-3xl leading-tight">Take a look at offer's page !
			</h3>
			<a href="Offers"><button
				class="mx-auto lg:mx-0 hover:underline bg-white text-gray-800 font-bold rounded-full my-6 py-4 px-8 shadow-lg focus:outline-none focus:shadow-outline transform transition hover:scale-105 duration-300 ease-in-out">
				Offers</button></a>
		</c:otherwise>
		</c:choose>
	</c:if>
	<c:if test="${sessionScope.SESSION_USER.getStatusAdmin() == 0}">
		<h1
				class="w-full my-2 text-5xl font-bold leading-tight text-center text-white">
				Do you have skills to share ?</h1>
			<div class="w-full mb-4">
				<div
					class="h-1 mx-auto bg-white w-1/6 opacity-25 my-0 py-0 rounded-t"></div>
			</div>
			<h3 class="my-4 text-3xl leading-tight">Become a Seller !
			</h3>
			<a href="CreateSeller"><button
				class="mx-auto lg:mx-0 hover:underline bg-white text-gray-800 font-bold rounded-full my-6 py-4 px-8 shadow-lg focus:outline-none focus:shadow-outline transform transition hover:scale-105 duration-300 ease-in-out">
				Devener Prestataire</button></a>
	</c:if>
	
	</section>

				
	<!-- jQuery if you need it
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  -->
	<script>
		var scrollpos = window.scrollY;
		var header = document.getElementById("header");
		var navcontent = document.getElementById("nav-content");
		var navaction = document.getElementById("navAction");
		var brandname = document.getElementById("brandname");
		var toToggle = document.querySelectorAll(".toggleColour");

		document.addEventListener("scroll", function() {
			/*Apply classes for slide in bar*/
			scrollpos = window.scrollY;

			if (scrollpos > 10) {
				header.classList.add("bg-white");
				navaction.classList.remove("bg-white");
				navaction.classList.add("gradient");
				navaction.classList.remove("text-gray-800");
				navaction.classList.add("text-white");
				//Use to switch toggleColour colours
				for (var i = 0; i < toToggle.length; i++) {
					toToggle[i].classList.add("text-gray-800");
					toToggle[i].classList.remove("text-white");
				}
				header.classList.add("shadow");
				navcontent.classList.remove("bg-gray-100");
				navcontent.classList.add("bg-white");
			} else {
				header.classList.remove("bg-white");
				navaction.classList.remove("gradient");
				navaction.classList.add("bg-white");
				navaction.classList.remove("text-white");
				navaction.classList.add("text-gray-800");
				//Use to switch toggleColour colours
				for (var i = 0; i < toToggle.length; i++) {
					toToggle[i].classList.add("text-white");
					toToggle[i].classList.remove("text-gray-800");
				}

				header.classList.remove("shadow");
				navcontent.classList.remove("bg-white");
				navcontent.classList.add("bg-gray-100");
				
			}
		});
	</script>
	<script>
		/*Toggle dropdown list*/
		/*https://gist.github.com/slavapas/593e8e50cf4cc16ac972afcbad4f70c8*/

		var navMenuDiv = document.getElementById("nav-content");
		var navMenu = document.getElementById("nav-toggle");

		document.onclick = check;
		function check(e) {
			var target = (e && e.target) || (event && event.srcElement);

			//Nav Menu
			if (!checkParent(target, navMenuDiv)) {
				// click NOT on the menu
				if (checkParent(target, navMenu)) {
					// click on the link
					if (navMenuDiv.classList.contains("hidden")) {
						navMenuDiv.classList.remove("hidden");
					} else {
						navMenuDiv.classList.add("hidden");
					}
				} else {
					// click both outside link and outside menu, hide menu
					navMenuDiv.classList.add("hidden");
				}
			}
		}
		function checkParent(t, elm) {
			while (t.parentNode) {
				if (t == elm) {
					return true;
				}
				t = t.parentNode;
			}
			return false;
		}
	</script>
	<!-- The Modal -->
	<div id="myModal" class="modal">
	  <span class="close" onclick="pauseVid();">&times;</span>
	  
	  
	  <video style="margin:0 auto" id="myVideo" width="75%" height="75%" controls>
	  	<source src="IMAGES/brikol-1080p-2.mp4" type="video/mp4" >
	  </video>
	  <div id="caption" onclick="pauseVid();"></div>
	</div>
	
	<script>
		// Get the modal
		var modal = document.getElementById("myModal");
		
		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById("myImg");
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function(){
		  modal.style.display = "block";
		  
		}
		
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() { 
		  modal.style.display = "none";
		  pauseVid();
		}
		
		var vid = document.getElementById("myVideo");

		function playVid() {
		    vid.play();
		}
		
		function pauseVid() {
		    vid.pause();
		}

	</script>
</body>
</html>
