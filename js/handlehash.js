/*global $*/
$(document).ready(function() {
	'use strict';
	var submit;
	window.location.hash = "";
	$(window).on('hashchange', function() {
		var pageHash = window.location.hash.substring(1);
		if (pageHash.length == 0) {
			showPage('.messages');
		}
	});
	$(window).trigger('hashchange');

	$(".nav-link").on('click', function(event) {
		event.preventDefault();
		var page = $(this).attr("href");
		var pageHash = page.split('.')[0];
		page = pageHash.split('/')[1];
		if(page === 'profile'){
			showPage('.profile');
			loadPage('.profile',pageHash);
		}
		else if(page === 'settings'){
			showPage('.settings');
			loadPage('.settings',pageHash);
		}
		else if(page === 'newmail'){
			showPage('.mailform');
			loadPage('.mailform',pageHash);
		}
		else if(page === 'newuser'){
			showPage('.newuser');
			loadPage('.newuser',pageHash);
		}
		window.location.hash = page;
	});
});

function loadPage(pageClass, ref){
	var container = '.jumbotron ' + pageClass;
	$(container).load(ref + '.php');
}


function showPage(pageClass){
	$('.content').hide();
	$(pageClass).show();
}