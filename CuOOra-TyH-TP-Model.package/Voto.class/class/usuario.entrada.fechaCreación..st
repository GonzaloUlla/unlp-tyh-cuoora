instance creation
usuario: unUsuario entrada: unaEntrada fechaCreación: unaFecha
	"Constructor de Voto"

	| nuevoVoto |
	nuevoVoto := self new.
	nuevoVoto usuario: unUsuario.
	nuevoVoto entrada: unaEntrada.
	nuevoVoto fechaCreación: unaFecha.
	^ nuevoVoto