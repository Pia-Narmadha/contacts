# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

button=0
FirstNameflag=0
PhoneNumberflag=0
validateFirstName = () ->
	FirstName=document.getElementsByName('contact[FirstName]')[0]
	if (FirstName.value == null || FirstName.value == "" || FirstName.value == "undefined") 
		FirstName.style.borderColor='red'
		button.style.display="none"
		FirstNameflag=0  
	else
		FirstNameflag=1
		FirstName.style.borderColor='green'
		if FirstNameflag && PhoneNumberflag
			button.style.display="block"
validatePhoneNumber = () ->
	PhoneNumber=document.getElementsByName('contact[PhoneNumber]')[0]
	if (PhoneNumber.value == null || PhoneNumber.value == "" || PhoneNumber.value == "undefined") 
		PhoneNumber.style.borderColor='red'
		button.style.display="none"
		PhoneNumberflag=0
	else
		PhoneNumberflag=1
		PhoneNumber.style.borderColor='green'
		if FirstNameflag && PhoneNumberflag
			button.style.display="block"
validateForm = () -> 
	button=document.getElementsByName('commit')[0]
	x = document.getElementsByName('contact[FirstName]')[0]	
	$(x).blur(validateFirstName)
	y = document.getElementsByName('contact[PhoneNumber]')[0]	
	$(y).blur(validatePhoneNumber)
	

$(document).ready ->
	validateForm()
	validateFirstName()
	validatePhoneNumber()
	

