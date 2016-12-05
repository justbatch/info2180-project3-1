window.onload = function() {
	"use strict";
	
	var submit = document.getElementById('submit');
	submit.addEventListener('click', function(e){
		e.preventDefault();
		
		var url = 'php-files/validateLogin.php';
		var username = document.getElementById('username');
		var password = document.getElementById('password');
		if(username.value === "" || password.value === ""){
			if(username.value === ""){
				username.style.borderColor = '#fd003a';
			}
			if(password.value === ""){
				password.style.borderColor = '#fd003a';
			}

			$('.alert-warning').show(1000);
			var timer = setInterval(function(){
				$('.alert-warning').hide(1000);
				password.style.borderColor = '#ccc';
				username.style.borderColor = '#ccc';
			},5000);


		}
		else{
			login(url,'POST',username.value,password.value);
		}
	
		
	});
	$('.tooltip-bottom').tooltip({
		placement: 'bottom',
		viewport: {selector: 'body', padding: 2}
	});
};


function login(url,type,name,pword){
	var data = 'username='+name+'&password='+pword;
	var httpRequest = new XMLHttpRequest();
	
	httpRequest.onreadystatechange = function(){
		if (httpRequest.readyState === XMLHttpRequest.DONE){
			if (httpRequest.status === 200) {
				var responseText = httpRequest.responseText;
				if(responseText == 'true'){
					// window.location = 'http://localhost/info2180-final-project/home.php';
					//uncomment below when in C9
					window.location = 'https://info2180-project3-damainrussel.c9users.io/home.php';
				}
				else {
					if(responseText === 'false'){
						$('.alert-danger').show(1000);
						var timer = setInterval(function(){
							$('.alert-danger').hide(1000);
						},5000);
					}
				}
			}
		}
	};
	httpRequest.open(type, url, true);
	httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	httpRequest.send(data);
}




