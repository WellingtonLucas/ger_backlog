$(function() {
	$(function() {
		FB.init({
			appId : "1188894861155487",
			status : true,
			cookie :

			true
		});

	});

	$('#btPostar').click(function() {
		// calling the API ...
		var obj = {
			method : 'feed',
			message : 'Testando FacebookAPI',
			privacy : {
				'value' : 'SELF'
			}
		};
		function callback(response) {

			document.getElementById('msg').innerHTML = "Post ID: "
					+ response['post_id'];
		}

		FB.ui(obj, callback);
	});

	$('#btShare').click(function() {

		// calling the API ...
		var obj = {
			method : 'feed',
			redirect_uri : 'http://www.quixada.ufc.br/',
			link : 'http://www.quixada.ufc.br/',
			picture : 'http://www.quixada.ufc.br/wp-content/uploads/2015/09/logo1.jpg',
			name : 'Ger-Backlog - Gerencie suas atividades',
			caption : 'Redes Sociais 2015.2 - Engenharia de Software',
			description : 'Aplicação web desenvolvida pelos alunos Léuson Mário e Wellington Lucas, sob a supervisão da Professora Paulyne Jucá, na disciplina de Redes Socias do Campus da UFC Quixadá.'
		};
		function callback(response) {

			document.getElementById('msg').innerHTML = "Post ID: "
					+ response['post_id'];
		}

		FB.ui(obj, callback);
	})
});
