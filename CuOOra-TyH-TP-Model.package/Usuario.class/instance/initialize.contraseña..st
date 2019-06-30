initialization
initialize: unNombre contraseña: unaContraseña
	nombre := unNombre.
	contraseña := unaContraseña.
	fechaCreación := DateAndTime now.
	tópicosInterés := OrderedCollection new.
	sigueA := OrderedCollection new.
	preguntas := OrderedCollection new.
	respuestas := OrderedCollection new.
	