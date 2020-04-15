initialization
initialize
	"Inicialización de un Usuario"

	super initialize.
	nombre := nil.
	contraseña := nil.
	fechaCreación := DateAndTime now.
	tópicosInterés := OrderedCollection new.
	sigueA := OrderedCollection new.
	preguntas := OrderedCollection new.
	respuestas := OrderedCollection new.
	estrategiaHomeActual := PersonalizarPorSocial usuario: self