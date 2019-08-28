instance-creation
preguntaView: unaPreguntaView cuooraSingleton: cuoora loggedUser: unUsuario
	"Constructor de AgregarRespuestaView"

	| nuevaAgregarRespuestaView |
	nuevaAgregarRespuestaView := self new.
	nuevaAgregarRespuestaView preguntaView: unaPreguntaView.
	nuevaAgregarRespuestaView cuooraSingleton: cuoora.
	nuevaAgregarRespuestaView loggedUser: unUsuario.
	^ nuevaAgregarRespuestaView