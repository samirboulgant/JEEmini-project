    
var offers = document.getElementsByClassName("offer");

function removeChilds(item){
    item.remove();
}




function sort(){

    var temp = document.getElementsByClassName("date")[0].textContent.trim();
    var pattern = /(\d{2})\/(\d{2})\/(\d{4})/;
    var date1 = new Date(temp.replace(pattern, '$2/$1/$3'));

    var temp = document.getElementsByClassName("date")[offers.length - 1].textContent.trim();
    var date2 = new Date(temp.replace(pattern, '$2/$1/$3'))

    console.log(date1-date2);
    var order = document.getElementById('order').value;

    if (order == "new-old" && date1 - date2 < 0) {
        const offers_parent = document.getElementById("offers");
        const arr = Array.from(offers_parent.childNodes);
        arr.reverse();
        offers_parent.append(...arr);
    }
    if(order == "old-new" && date1 - date2 > 0){
        const offers_parent = document.getElementById("offers");
        const arr = Array.from(offers_parent.childNodes);
        arr.reverse();
        offers_parent.append(...arr);
    }
}

function filter(){

    var categories_input = document.getElementsByName("category[]");
    var categories = new Array();

    for (var i=0; i<categories_input.length; i++){
        if (categories_input[i].checked) categories.push(categories_input[i].value.toLowerCase());
    }

    var cities_input = document.getElementsByName("city[]");
    var cities = new Array();

    for (var i = 0 ; i < cities_input.length; i++){
        if(cities_input[i].checked) cities.push(cities_input[i].value.toLowerCase())
    }
        
    for (var i=0; i<offers.length; i++){
        offers[i].removeAttribute("style");
    }
    
    if (categories.length != 0  ){
        
        for (var i=0; i<offers.length; i++){
            let cat  = offers[i].getElementsByClassName("skills")[0].textContent.trim().toLowerCase();
            if (!categories.includes(cat)) offers[i].setAttribute("style", "display: none !important;");      
        }
    }

    if (cities.length != 0){
        for (var i=0; i<offers.length; i++){
            let city = offers[i].getElementsByClassName("city")[0].textContent.trim().toLowerCase();

            if(!cities.includes(city)) offers[i].setAttribute("style", "display: none !important;");
        }
    }

    var number = 0;
    for (var i=0; i<offers.length;i++){
        var style = window.getComputedStyle(offers[i]);
        if(style.display != 'none'){
            number++;
        }
    }
    document.getElementsByClassName('resultat')[0].textContent = number.toString() + ' résultats trouvés'

}