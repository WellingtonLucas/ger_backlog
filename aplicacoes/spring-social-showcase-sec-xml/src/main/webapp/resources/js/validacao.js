$(document).ready(function() { 
	$('#signin').bootstrapValidator({
        feedbackIcons: {
        	valid: 'glyphicon glyphicon-ok',
        	invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	err: 'tooltip',
        	j_username: {
                validators: {
                    notEmpty:{
            			message: 'Campo obrigatório.'
            		}
                }
            },
            j_password: {
                validators: {
                    notEmpty:{
            			message: 'Campo obrigatório.'
            		}
                }
            }
        }
       
	});
	
	$('#signup').bootstrapValidator({
        feedbackIcons: {
        	valid: 'glyphicon glyphicon-ok',
        	invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	err: 'tooltip',
        	firstName: {
                validators: {
                    notEmpty:{
            			message: 'Campo obrigatório.'
            		}
                }
            },
            lastName: {
                validators: {
                    notEmpty:{
            			message: 'Campo obrigatório.'
            		}
                }
            },
            username: {
                validators: {
                    notEmpty:{
            			message: 'Campo obrigatório.'
            		}
                }
            },
            password: {
                validators: {
                    notEmpty:{
            			message: 'Campo obrigatório.'
            		}
                }
            }
        }
       
	});

});
