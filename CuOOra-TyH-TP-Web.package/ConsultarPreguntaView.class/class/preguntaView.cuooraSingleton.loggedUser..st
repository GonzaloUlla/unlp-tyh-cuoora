instance creation
preguntaView: unaPreguntaView cuooraSingleton: cuoora loggedUser: unUsuario
	"Constructor de ConsultarPreguntaView"

	| nuevaConsultarPreguntaView |
	nuevaConsultarPreguntaView := self new.
	nuevaConsultarPreguntaView preguntaView: unaPreguntaView.
	nuevaConsultarPreguntaView cuooraSingleton: cuoora.
	nuevaConsultarPreguntaView loggedUser: unUsuario.
	^ nuevaConsultarPreguntaView