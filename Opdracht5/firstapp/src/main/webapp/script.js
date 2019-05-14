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
            showWeather(myJson.latitude,myJson.longitude)
        });
        
        loadCountries();
        showWeather(myJson.latitude, myJson.longitude);
    })
}


function showWeather(latitude, longitude) {
    var location = latitude + "-" + longitude;
    var myJson = JSON.parse(window.localStorage.getItem(location));
    
    if (localStorage.getItem(location) === null) {
        fetchWeather(latitude,longitude)
    }
    
    if (myJson.timeFetched + 600000 < Date.now()) {
        fetchWeather(latitude, longitude);
        myJson = JSON.parse(window.localStorage.getItem(location));
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

function fetchWeather(latitude, longitude) {
    var location = latitude + "-" + longitude;
    fetch('https://api.openweathermap.org/data/2.5/weather?lat=' + latitude + '&lon=' + longitude  + '&appid=5cf088b02f715105e1fe3ed09163a51c&units=metric')
        .then(response => response.json())
        .then(function(myJson) {
            myJson['timeFetched'] = Date.now();
            window.localStorage.setItem(location, JSON.stringify(myJson))
    });
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
            var row = document.createElement("tr");
            
            iso.appendChild(document.createTextNode(country.iso3));
            land.appendChild(document.createTextNode(country.name));
            hoofdstad.appendChild(document.createTextNode(country.capital));
            regio.appendChild(document.createTextNode(country.region));
            continent.appendChild(document.createTextNode(country.continent));
            oppervlakte.appendChild(document.createTextNode(country.surface));
            inwoners.appendChild(document.createTextNode(country.population));
            
            row.addEventListener("click", function() {
                showWeather(country.lat,country.lng)
            });

            row.appendChild(iso);
            row.appendChild(land);
            row.appendChild(hoofdstad);
            row.appendChild(regio);
            row.appendChild(continent);
            row.appendChild(oppervlakte);
            row.appendChild(inwoners);

            document.querySelector("#countryinfo").appendChild(row);
        }
	})
}

function degToCompass(deg) {
    var val = Math.floor((deg / 22.5) + 0.5);
    var arr = ["N", "NNO", "NO", "ONO", "O", "OZO", "ZO", "ZZO", "Z", "ZZW", "ZW", "WZW", "W", "WNW", "NW", "NNW"];
    return arr[(val % 16)];
}

function unixToTime(timestamp) {
    var date = new Date((timestamp + 7200) * 1000);
    var iso = date.toISOString().match(/(\d{2}:\d{2}:\d{2})/);
    return iso[0];
}

initPage();