$(document).ready(function(){
	$('form[id="registration_form"]').validate({
		// login
		rules: {				
			email: {
				required: true,
				email: true,
			},
			password: {
				required: true,
				minlength: 8,
			},
		// register
			reg_name:{
				required: true,
				myField: { lettersonly: true },
			},
			email_id:{
				required: true,
				email: true,
			},
			confirm_password:{
				required:true,
				minlength:8,
				equalTo:'#reg_pwd'
			},
			mob_no:{
				required:true,
				minlength:10,
				maxlength:10
			},
			userCaptcha:{
				required:true,
				equalTo:'#mainCaptcha',
			},
			qualification:{
				required: function(element) { return $("#reg_qualification").val() == ''}
			},
			reg_dob:'required',
			//qualification:'required',
			year_of_completion:'required',
			state: 'required',
			city: 'required',
		},
		messages: {
			email:{
				required:'This field is required',
				email: 'Enter valid email',
			},
			email_id:{
				required:'This field is required',
				email: 'Enter valid email',
			},
			password: {
				minlength: 'Password must be at least 8 characters long'
			},
			confirm_password:{
				minlength: 'Password must be at least 8 characters long',
				equalTo:'Passwords don\'t match'
			},
			mob_no:{
				required:'This field is required',
				minlength:'Invalid Number',
				maxlength:'Invalid Number'
			},
			userCaptcha:{
				required:'This field is required',
				equalTo:'Captcha is incorrect'
			},
			qualification:'This field is required',
			reg_dob: 'This field is required',
			year_of_completion:'This field is required',
			state:'This field is required',
			city:'This field is required'
		},
		submitHandler: function(form) {
			form.submit();
		}
	});

});

