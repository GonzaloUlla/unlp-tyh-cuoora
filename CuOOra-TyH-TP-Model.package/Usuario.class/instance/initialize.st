initialization
initialize
	"Inicialización de un Usuario"

	super initialize.
	nombre := ''.
	contraseña := ''.
	fechaCreación := DateAndTime now.
	tópicosInterés := OrderedCollection new.
	sigueA := OrderedCollection new.
	preguntas := OrderedCollection new.
	respuestas := OrderedCollection new.
	estrategiaHomeActual := PersonalizarPorSocial new