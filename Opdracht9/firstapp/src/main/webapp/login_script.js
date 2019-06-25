document.querySelector("#login_btn").addEventListener("click", function login() {
	let formData = new FormData(document.querySelector('#form'));
	let encData = new URLSearchParams(formData.entries());
	fetch('restservices/authentication', {method: 'POST', body: encData})
	.then(function (response){
		if (response.status === 401){
			alert("inloggegevens zijn fout");
		} else if (response.status === 200) {
			location.href = "country.html";
		} else {
			alert("Er is een mis gegaan, probeer het later...");
		}
	});
});