<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Registration</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-300">
  <nav id="header" class="fixed w-full z-30 top-0 text-white">
    <div class="w-full container mx-auto flex flex-wrap items-center justify-between mt-0 py-2">
      <div class="pl-4 flex items-center">
        <a class="text-3xl text-blue-500 font-bold font-heading" href="#">
          <!--<img class="h-10" src="logo.png" alt="logo"> -->
          BRIKOL
        </a>
      </div>
      <div class="block lg:hidden pr-4">
        <button id="nav-toggle" class="flex items-center p-1 text-pink-800 hover:text-gray-900 focus:outline-none focus:shadow-outline transform transition hover:scale-105 duration-300 ease-in-out">
          <svg class="fill-current h-6 w-6" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <title>Menu</title>
            <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />
          </svg>
        </button>
      </div>
      <div class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden mt-2 lg:mt-0 bg-white lg:bg-transparent text-black p-4 lg:p-0 z-20" id="nav-content">
        <ul class="list-reset lg:flex justify-end flex-1 items-center">
          <li class="mr-3">
            <a class="inline-block py-2 px-4 text-black font-bold no-underline" href="#">Active</a>
          </li>
          <li class="mr-3">
            <a class="inline-block text-black no-underline hover:text-gray-800 hover:text-underline py-2 px-4" href="#">link</a>
          </li>
          <li class="mr-3">
            <a class="inline-block text-black no-underline hover:text-gray-800 hover:text-underline py-2 px-4" href="#">link</a>
          </li>
        </ul>
        <a href="sign in.html"><button
          id="navAction"
          class="mx-auto lg:mx-0 hover:underline bg-white text-gray-800 font-bold rounded-full mt-4 lg:mt-0 py-4 px-8 shadow opacity-75 focus:outline-none focus:shadow-outline transform transition hover:scale-105 duration-300 ease-in-out"
        >
          Se connecter
        </button></a>
      </div>
    </div>
    <hr class="border-b border-gray-100 opacity-25 my-0 py-0" />
  </nav>
    
   <div class="w-fll h-full bg-no-repeat bg-cover" style="background-image: url('');">     
   <form class=" bg-white p-8 rounded shadow-2xl  sm:max-w-xl sm:mx-auto w-full  max-w-lg" style="margin-top: 100px; " action="RegForm" method="post">
    <h1 class="text-3xl relative py-3 font-black text-center" >Artisan informations </h1> 
   <div class="relative py-3 sm:max-w-xl sm:mx-auto w-full  max-w-lg">
       <div class="  py-10 flex flex-col justify-center sm:py-12">
    <div class="flex flex-wrap -mx-3 mb-6">
      <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">
          First Name
        </label>
        <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-first-name" type="text" placeholder="Jane">
        <p class="text-red-500 text-xs italic">Please fill out this field.</p>
      </div>
      
      <div class="w-full md:w-1/2 px-3">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">
          Last Name
        </label>
        <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-last-name" type="text" placeholder="Doe">
      </div>
    </div>
    
    <div class="flex flex-wrap -mx-3 mb-6">
      <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" >
            Valid Phone Number(s)
        </label>
        <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-phone" type="text" placeholder="">
    
      </div>
      
      <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">
           Email
        </label>
        <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-Email" type="text" placeholder="xxxx@yyyy.com">
        
      </div>
     
   </div>
    <div class="flex flex-wrap -mx-3 mb-6">
      <div class="w-full px-3">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-password">
          Password
        </label>
        <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-password" type="password" placeholder="******************">
        <p class="text-gray-600 text-xs italic">The longer, the better</p>
      </div>
    </div>
    <div class="flex flex-wrap -mx-3 mb-6">
      
      <div class="w-full px-3">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-state">
        City
        </label>
        <div class="relative">
          <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-state">
            
            <option value=""></option>
            <option>Tanger</option>

            <option value="">Tétouan</option>
            <option value="">Al Hoceïma</option>
            <option>Casablanca</option>
            <option>Meknès</option>
            <option >Fès</option>
            <option >Rabat</option>
            <option>Salé</option>
            <option >Kénitra</option>
            <option >Béni Mellal</option>
            <option>Khénifra</option>
            <option>Settat</option>
            <option>Marrakech</option>
            <option >Safi</option>
            <option>Tafilalet</option>
            <option>Agadir</option>
            <option>Guelmim</option>
            <option >Guelmnim</option>
            <option>Laâyoune</option>
            <option >-Sakia El Hamra</option>
            <option>Dakhla</option>

          </select>
          <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
            <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
          </div>
        </div>
      </div>
      
      
      <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0 mt-10">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-service">
            Service you are rendering
        </label>
        <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-sevice" type="text" placeholder="">
      </div>
      <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0 mt-10">
        <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-fb">
            Facebook name
        </label>
        <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-faceboock" type="text" placeholder="">
        
      </div>
      
      
    </div>
      
     
      
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full px-3">
          <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-password">
            Hours Of Operation
          </label>
          <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"  type="text" placeholder="Monday-Saturday">
           
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full px-3">
          <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-password">
            A short and detailed description of your service
          </label>
          <textarea class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-password" rows="5"  placeholder="short description"></textarea>
          
        </div>
        
</div>
<div class="">
    <div class="">
      
<button type="submit" class=" nt-4  bg-blue-600 text-black py-2 px-12 rounded-md hover:bg-blue-500" >Register</button>

    </div>
</div>


  </form>
</div>
</body>
</html>