/*global $ */
function sendMessage(){
	var validate = /^(?=.*[A-Za-z])([^\\;])[A-Za-z\\s\\;]+$/;
	var go = true;
	var recipient = document.getElementById('recipients');
	var recipients = recipient.value.split(';');

	var subject = document.getElementById('subject').value;

	var message = document.getElementById('msgBody');
	var msgBody = message.value;

	
	//ensurring that there is at least one recipient

	if(recipients.length === 1 && recipients[0] === '' || !validate.test(recipient.value)){
		go = false;
		recipient.style.borderBottom = '2px solid red';
		if(! validate.test(recipient.value)){
			alert("Only letters A-Z a-z and character ';' are alowed (No space)");
		}
	}
	else{
		recipient.style.borderBottom = '1px solid #ccc';
	}
	
	//If the subject is null then i will set it to untitled
	if(subject === ''){
		subject = 'Untitled';
	}
	
	
	//Ensuring that the message body isn't empty
	if(msgBody === ''){
		message.style.borderBottom = '2px solid red';	
		go = false;
	}
	else{
		message.style.borderBottom = '1px solid #ccc';
	}
	
	if(go){
		var httpRequest = new XMLHttpRequest();
		var data = 'recipient=' + recipients +'&subject=' + subject + '&message='+msgBody +'&submit=submit';
		//console.log( data );
		httpRequest.onreadystatechange = function(){
			if (httpRequest.readyState === XMLHttpRequest.DONE){
				if (httpRequest.status === 200) {
					var response = httpRequest.responseText;
					if(response === 'true'){
						$('.alert-success').show();
						$('.alert-warning').hide();
						$('.alert-danger').hide();
						recipient.value = '';
						document.getElementById('subject').value = '';
						message.value = '';
					}
					else{
						$('.alert-warning').show();
						$('.alert-success').hide();
						$('.alert-danger').hide();
					}
				}
			}
		};
		httpRequest.open('POST', 'php-files/sendmail.php', true);
		httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		httpRequest.send(data);
		
	}
	else{
		$('.alert-success').hide();
		$('.alert-warning').hide();
		$('.alert-danger').show();
	}
	
	
	return false;
}
