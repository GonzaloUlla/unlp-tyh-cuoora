rendering
renderRespuestaDescriptionOn: html
	html paragraph: respuesta texto.
	html text: 'Fecha: '.
	html text: respuesta fechaCreación asStringYMDHM.
	html break.
	html text: 'Likes: '.
	html text: respuesta conocerVotosPositivos size.
	html text: ' | Dislikes: '.
	html text: respuesta conocerVotosNegativos size.
	html break