instance creation
usuario: unUsuario entrada: unaEntrada
	"Constructor de Voto"

	| nuevoVoto |
	nuevoVoto := self new.
	nuevoVoto usuario: unUsuario.
	nuevoVoto entrada: unaEntrada.
	nuevoVoto fechaCreación: DateAndTime now.
	^ nuevoVoto