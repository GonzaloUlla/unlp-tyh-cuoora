rendering
renderRespuestasOn: html
	preguntaView pregunta conocerRespuestas do: [ :eachRespuesta | html render: (RespuestaView respuesta: eachRespuesta loggedUser: loggedUser) ]