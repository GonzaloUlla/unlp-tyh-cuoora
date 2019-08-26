instance creation
cuooraSingleton: cuoora loggedUser: unUsuario
	"Constructor de AgregarPreguntaView"

	| nuevaAgregarPreguntaView |
	nuevaAgregarPreguntaView := self new.
	nuevaAgregarPreguntaView cuooraSingleton: cuoora.
	nuevaAgregarPreguntaView loggedUser: unUsuario.
	^ nuevaAgregarPreguntaView