

function filterButton() {
    var cities = document.getElementsByName("city[]");
    var professions = document.getElementsByName("category[]");
    var city = false;
    var pro = false;

    for (var i = 0; i < cities.length; i++) {
        if (cities[i].checked) city = true;
    }

    for (var i = 0; i < professions.length; i++) {
        if (professions[i].checked) pro = true;
    }
	console.log(city);
	console.log(pro);
    if (city && pro) {
        document.getElementById('filterbutton').disabled = false;
    }
	else{
		document.getElementById('filterbutton').disabled = true;
	}

}