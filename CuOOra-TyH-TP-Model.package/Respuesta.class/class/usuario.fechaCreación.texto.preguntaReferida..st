instance creation
usuario: unUsuario fechaCreación: unaFecha texto: unTexto preguntaReferida: unaPregunta
	"Constructor de Respuesta"

	| nuevaRespuesta |
	nuevaRespuesta := self new.
	nuevaRespuesta usuario: unUsuario.
	nuevaRespuesta fechaCreación: unaFecha.
	nuevaRespuesta texto: unTexto.
	nuevaRespuesta preguntaReferida: unaPregunta.
	unaPregunta agregarRespuesta: nuevaRespuesta.
	^ nuevaRespuesta