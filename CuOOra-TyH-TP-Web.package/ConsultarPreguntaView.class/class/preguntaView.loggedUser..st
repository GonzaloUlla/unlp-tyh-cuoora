instance creation
preguntaView: unaPreguntaView loggedUser: unUsuario
	"Constructor de ConsultarPreguntaView"

	| nuevaConsultarPreguntaView |
	nuevaConsultarPreguntaView := self new.
	nuevaConsultarPreguntaView preguntaView: unaPreguntaView.
	nuevaConsultarPreguntaView loggedUser: unUsuario.
	^ nuevaConsultarPreguntaView