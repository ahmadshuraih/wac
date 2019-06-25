function initPage() {
    fetch('https://ipapi.co/json/').then(response => response.json()).then(function(myJson) {
        document.querySelector("#landcode").innerHTML = myJson.country;
        document.querySelector("#land").innerHTML = myJson.country_name;
        document.querySelector("#koers").innerHTML = myJson.currency;
        document.querySelector("#regio").innerHTML = myJson.region;
        document.querySelector("#stad").innerHTML = myJson.city;
        document.querySelector("#postcode").innerHTML = myJson.postal;
        document.querySelector("#latitude").innerHTML = myJson.latitude;
        document.querySelector("#longitude").innerHTML = myJson.longitude;
        document.querySelector("#ip").innerHTML = myJson.ip;
        
        document.querySelector("#myLocation").addEventListener("click", function() {
            showWeather(myJson.latitude,myJson.longitude);
        });
        
        loadCountries();
        fetchWeather(myJson.latitude, myJson.longitude);
        showWeather(myJson.latitude,myJson.longitude);
    })
}

function fetchWeather(latitude, longitude) {
    var location = latitude + "-" + longitude;
    fetch('https://api.openweathermap.org/data/2.5/weather?lat=' + latitude + '&lon=' + longitude  + '&appid=5cf088b02f715105e1fe3ed09163a51c&units=metric')
        .then(response => response.json())
        .then(function(myJson) {
            myJson['timeFetched'] = Date.now();
            window.localStorage.setItem("locatie", JSON.stringify(myJson));
    });
}

function showWeather(latitude, longitude) {
    var locatie = latitude + "-" + longitude;
    var myJson = JSON.parse(localStorage.locatie);
    
    if (localStorage.getItem(locatie) === null) {
        fetchWeather(latitude,longitude)
    } else if (myJson.timeFetched + 600000 < Date.now()) {
        fetchWeather(latitude, longitude);
        myJson = JSON.parse(window.localStorage.getItem(locatie));
    }

    document.querySelector("#weatherinfoH1").innerHTML = "Het weer in " + myJson.name;
    document.querySelector("#temperatuur").innerHTML = myJson.main.temp;
    document.querySelector("#weer").innerHTML = myJson.weather[0].main;
    document.querySelector("#beschrijving").innerHTML = myJson.weather[0].description;
    document.querySelector("#luchtvochtigheid").innerHTML = myJson.main.humidity;
    document.querySelector("#windsnelheid").innerHTML = myJson.wind.speed;
    document.querySelector("#windrichting").innerHTML = degToCompass(myJson.wind.deg);
    document.querySelector("#zonsopgang").innerHTML = unixToTime(myJson.sys.sunrise);
    document.querySelector("#zonsondergang").innerHTML = unixToTime(myJson.sys.sunset);
}

function loadCountries() {
	fetch('restservices/countries').then(response => response.json()).then(function(myJson) {
        for (let country of myJson) {
        	var iso = document.createElement("td");
            var land = document.createElement("td");
            var hoofdstad = document.createElement("td");
            var regio = document.createElement("td");
            var continent = document.createElement("td");
            var oppervlakte = document.createElement("td");
            var inwoners = document.createElement("td");
            var wijziggen = document.createElement("button");
            var verwijderen = document.createElement("button");
            verwijderen.setAttribute("class", "annulerenbtn1");
            var row = document.createElement("tr");
            
            
            iso.appendChild(document.createTextNode(country.iso3));
            land.appendChild(document.createTextNode(country.name));
            hoofdstad.appendChild(document.createTextNode(country.capital));
            regio.appendChild(document.createTextNode(country.region));
            continent.appendChild(document.createTextNode(country.continent));
            oppervlakte.appendChild(document.createTextNode(country.surface));
            inwoners.appendChild(document.createTextNode(country.population));
            wijziggen.appendChild(document.createTextNode("Wijziggen"));
            verwijderen.appendChild(document.createTextNode("Verwijderen"));

            row.addEventListener("click", function() {
                showWeather(country.lat, country.lon);
            });
            
            wijziggen.addEventListener("click", function country_wijziggen() {
          	
            	document.getElementById("code").value = country.code;
            	document.getElementById("iso3").value = country.iso3;
            	document.getElementById("name").value = country.name;
            	document.getElementById("capital").value = country.capital;
            	document.getElementById("region").value = country.region;
            	document.getElementById("continent").value = country.continent;
            	document.getElementById("surface").value = country.surface;
            	document.getElementById("population").value = country.population;
            	
            	document.getElementById('country_wijziggen').style.display='block';
            });
            
            verwijderen.addEventListener("click", function() {
            	fetch('restservices/countries/verwijderen/' + country.code, {method:"DELETE"})
            	.then(response => response.json())
            	.then(function (myJson){
            		for (let response of myJson){
            			if (response.verwijderd == true){
            				alert("Country is verwijderd!");
            			} else {
            				alert("Country is niet verwijderd!");
            			}
            		}
            	});
            });
            
            row.appendChild(iso);
            row.appendChild(land);
            row.appendChild(hoofdstad);
            row.appendChild(regio);
            row.appendChild(continent);
            row.appendChild(oppervlakte);
            row.appendChild(inwoners);
            row.appendChild(wijziggen);
            row.appendChild(verwijderen);
            

            document.querySelector("#countryinfo").appendChild(row);
        }
	})
}

document.querySelector('#toevoeg_btn').addEventListener("click", function country_wijziggen() {	
	document.getElementById("code2").value = "";
	document.getElementById("iso32").value = "";
	document.getElementById("name2").value = "";
	document.getElementById("capital2").value = "";
	document.getElementById("region2").value = "";
	document.getElementById("continent2").value = "";
	document.getElementById("surface2").value = "";
	document.getElementById("local2").value = "";
	document.getElementById("latitude2").value = "";
	document.getElementById("longitude2").value = "";
	document.getElementById("government2").value = "";
	document.getElementById("population2").value = "";
	document.getElementById('country_toevoegen').style.display='block';
});

document.querySelector('#voeg_btn').addEventListener("click", function toevoegen() {
	let formData = new FormData(document.querySelector('#country_toevoegen_form'));
	let encData = new URLSearchParams(formData.entries());
	fetch('restservices/countries/toevoegen', {method: 'POST', body: encData})
	.then(response => response.json())
	.then(function (myJson){
		for (let response of myJson){
			if (response.toegevoegd == false){
				alert("Het is niet gelukt om het country toe te voegen!!!");
			} else {
				alert("Het country is succesvol toegevoegd.");
			}
		}
	});
});

document.querySelector('#aanpas_btn').addEventListener("click", function aanpassen() {
	let formData = new FormData(document.querySelector('#country_bewerken_form'));
	let encData = new URLSearchParams(formData.entries());
	fetch('restservices/countries/aanpassen', {method: 'PUT', body: encData})
	.then(response => response.json())
	.then(function (myJson){
		for (let response of myJson){
			if (response.aangepast == false){
				alert("Het is niet gelukt om het country aan te passen!!!");
			} else {
				alert("Het country is succesvol aangepast.");
			}
		}
	});
});


function degToCompass(degree) {
    var value = Math.floor((degree / 22.5) + 0.5);
    var resultarray = ["N", "NNO", "NO", "ONO", "O", "OZO", "ZO", "ZZO", "Z", "ZZW", "ZW", "WZW", "W", "WNW", "NW", "NNW"];
    return resultarray[(value % 16)];
}

function unixToTime(something) {
    var date = new Date((something + 7200) * 1000);
    var result = date.toISOString().match(/(\d{2}:\d{2}:\d{2})/);
    return result[0];
}

//Om de inner pagina van kamers bewerken te tonen
var modal = document.getElementById('kamers_bewerken_div2');

window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

initPage();