accessing
respuesta: unaRespuesta loggedUser: unUsuario
	"Constructor de RespuestaView"

	| nuevaRespuestaView |
	nuevaRespuestaView := self new.
	nuevaRespuestaView respuesta: unaRespuesta.
	nuevaRespuestaView loggedUser: unUsuario.
	^ nuevaRespuestaView