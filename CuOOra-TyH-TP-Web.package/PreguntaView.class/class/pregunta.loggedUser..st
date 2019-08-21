instance creation
pregunta: unaPregunta loggedUser: unUsuario
	"Constructor de PreguntaView"

	| nuevaPreguntaView |
	nuevaPreguntaView := self new.
	nuevaPreguntaView pregunta: unaPregunta.
	nuevaPreguntaView loggedUser: unUsuario.
	^ nuevaPreguntaView