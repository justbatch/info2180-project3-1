/*global $ */
function createUser(){
	var firstname = document.getElementById('firstname');
	var lastname = document.getElementById('lastname');
	var username = document.getElementById('username');
	var password = document.getElementById('password');
	var confirmpwd = document.getElementById('confirmpwd');
	
	var validate_username = /^(?=.*[A-Za-z])([^\\s\\-])[A-Za-z]+$/; //for username
	var valid_password = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/; //for password
	var validate_names = /^(?=.*[A-Za-z])([^\\s\\-])[A-Za-z\\s\\-]+$/;
	var empty_fields = 'All fields highlighted are required';
	
	
	var alert_field = document.getElementById('text');
	if(firstname.value === '' || lastname.value === '' || username.value === '' || password.value === '' || confirmpwd.value === ''){
		if(firstname.value === ''){
			firstname.style.borderBottom = '2px solid red';
			$('.alert-danger').show();
		}
		else{
			firstname.style.borderBottom = '1px solid #ccc';
		}
		if(lastname.value === ''){
			lastname.style.borderBottom = '2px solid red';
			$('.alert-danger').show();
		}
		else{
			lastname.style.borderBottom = '1px solid #ccc';
		}
		if(username.value === ''){
			username.style.borderBottom = '2px solid red';
			$('.alert-danger').show();
		}
		else{
			username.style.borderBottom = '1px solid #ccc';
		}
		if(password.value === ''){
			password.style.borderBottom = '2px solid red';
			$('.alert-danger').show();
		}
		else{
			password.style.borderBottom = '1px solid #ccc';
		}
		if(confirmpwd.value === ''){
			confirmpwd.style.borderBottom = '2px solid red';
			$('.alert-danger').show();
		}
		else{
			confirmpwd.style.borderBottom = '1px solid #ccc';
		}
		alert_field.innerHTML = empty_fields;
	}
	else{
		firstname.style.borderBottom = '1px solid #ccc';
		lastname.style.borderBottom = '1px solid #ccc';
		username.style.borderBottom = '1px solid #ccc';
		password.style.borderBottom = '1px solid #ccc';
		confirmpwd.style.borderBottom = '1px solid #ccc';
		
		if(validate_username.test(username.value) && validate_names.test(firstname.value) && validate_names.test(lastname.value) && valid_password.test(password.value) && password.value === confirmpwd.value){
			var httpRequest = new XMLHttpRequest();
			var data = 'submit=true&firstname='+firstname.value+'&lastname='+lastname.value+'&username='+username.value+'&password='+password.value+'&confirmpwd='+confirmpwd.value;
			httpRequest.onreadystatechange = function(){
				if (httpRequest.readyState === XMLHttpRequest.DONE){
					if (httpRequest.status === 200) {
						var response = httpRequest.responseText;
						console.log(response);
						if(response === 'true'){
							$('.alert-danger').hide();
							$('.alert-success').show();
							firstname.value = '';
							lastname.value = '';
							username.value = '';
							password.value = '';
							confirmpwd.value = '';
						}
						else if(response === 'false'){
							$('.alert-danger').show();
							$('.alert-success').hide();
							alert_field.innerHTML = 'Invalid User Data';
						}
						else if(response === 'username'){
							$('.alert-danger').show();
							$('.alert-success').hide();
							alert_field.innerHTML = 'Username already taken';
						}
					}
				}
			};
			httpRequest.open('POST', 'php-files/handlenewuser.php', true);
			httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			httpRequest.send(data);

			
		}
		else{
			$('.alert-success').hide();
			if( !validate_username.test(username.value) ){
				username.style.borderBottom = '2px solid red';
				$('.alert-danger').show();
				alert_field.innerHTML = 'Invalid Username';
			}
			else if( !validate_names.test(firstname.value) ){
				firstname.style.borderBottom = '2px solid red';
				$('.alert-danger').show();
				alert_field.innerHTML = 'Invalid First Name';
			}
			else if( ! validate_names.test(lastname.value) ){
				lastname.style.borderBottom = '2px solid red';
				$('.alert-danger').show();
				alert_field.innerHTML = 'Invalid Last Name';
			}
			else if ( !valid_password.test(password.value) ){
				password.style.borderBottom = '2px solid red';
				confirmpwd.style.borderBottom = '2px solid red';
				$('.alert-danger').show();
				alert_field.innerHTML = 'Invalid Password';
			}
			else if (password.value !== confirmpwd.value){
				password.style.borderBottom = '2px solid red';
				confirmpwd.style.borderBottom = '2px solid red';
				$('.alert-danger').show();
				alert_field.innerHTML = 'Passwords do not match';
			}
			
			
		}
		
	}
	
	
	return false;
}