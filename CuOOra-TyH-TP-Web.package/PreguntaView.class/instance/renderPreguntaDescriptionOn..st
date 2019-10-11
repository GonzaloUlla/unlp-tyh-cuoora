rendering
renderPreguntaDescriptionOn: html
	html paragraph: pregunta texto.
	html text: 'Tópicos:'.
	html space.
	pregunta conocerTópicosRelacionados do: [ :eachTopic | html text: eachTopic nombre , ', ' ].
	html break.
	html text: 'Realizada por: ' , pregunta usuario nombre.
	html text: ' | Fecha: '.
	html text: pregunta fechaCreación asStringYMDHM.
	html break.
	html text: 'Respuestas: '.
	html text: pregunta conocerRespuestas size.
	html text: ' | Likes: '.
	html text: pregunta conocerVotosPositivos size.
	html text: ' | Dislikes: '.
	html text: pregunta conocerVotosNegativos size.
	html break