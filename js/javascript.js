/*global $ */
window.onload = function() {
	"use strict";
	var logout = document.getElementById('logout');
	logout.addEventListener('click', function(e){
		e.preventDefault();
		var url = 'php-files/logout.php';
		endSession(url,'POST');
	});
	var messages = document.getElementById('nav-bar').children;
	for(var i = 0; i < messages.length; i++){
		messages[i].children[0].addEventListener('click', function(e){
			getMessageBody(this.id);
		});
	}
	$('blockquote').click(function() {
		$(this).removeClass('unread');
	});
	
};

function getMessageBody(msgid){
	var data = 'message_id='+msgid;
	var httpRequest = new XMLHttpRequest();
	httpRequest.onreadystatechange = function(){
		if (httpRequest.readyState === XMLHttpRequest.DONE){
			if (httpRequest.status === 200) {
				document.getElementById('msg-body').innerHTML = httpRequest.responseText;
			}
		}
	};
	httpRequest.open('POST', 'php-files/reademail.php', true);
	httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	httpRequest.send(data);
	
}

function endSession(url,type){
	var data = 'none';
	var httpRequest = new XMLHttpRequest();
	httpRequest.onreadystatechange = function(){
		if (httpRequest.readyState === XMLHttpRequest.DONE){
			if (httpRequest.status === 200) {
				window.location = 'http://localhost/info2180-final-project/index.php';
				//uncomment below when in C9
				//window.location = 'https://info2180-project3-damainrussel.c9users.io/index.php';
			}
		}
	};
	httpRequest.open(type, url, true);
	httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	httpRequest.send(data);
}