# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
hide_table = () ->
	currentURL = document.URL;
	sub=currentURL.indexOf("id");
	if (sub is -1)		
		$('#DisplayPageDetailsTable').hide();
$(document).ready ->
	hide_table();
