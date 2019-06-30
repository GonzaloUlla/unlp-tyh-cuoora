instance creation
usuario: unUsuario texto: unTexto preguntaReferida: unaPregunta
	"Constructor de Respuesta"

	| nuevaRespuesta |
	nuevaRespuesta := self new.
	nuevaRespuesta usuario: unUsuario.
	nuevaRespuesta fechaCreación: DateAndTime now.
	nuevaRespuesta texto: unTexto.
	nuevaRespuesta preguntaReferida: unaPregunta.
	^ nuevaRespuesta