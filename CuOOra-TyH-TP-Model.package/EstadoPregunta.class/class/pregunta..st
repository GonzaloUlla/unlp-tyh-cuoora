instance creation
pregunta: unaPregunta
	"Constructor de EstadoPregunta"

	| nuevoEstado |
	nuevoEstado := self new.
	nuevoEstado pregunta: unaPregunta.
	^ nuevoEstado