instance-creation
cuooraSingleton: cuoora loggedUser: unUsuario
	"Constructor de AgregarRespuestaView"

	| nuevaAgregarRespuestaView |
	nuevaAgregarRespuestaView := self new.
	nuevaAgregarRespuestaView cuooraSingleton: cuoora.
	nuevaAgregarRespuestaView loggedUser: unUsuario.
	^ nuevaAgregarRespuestaView