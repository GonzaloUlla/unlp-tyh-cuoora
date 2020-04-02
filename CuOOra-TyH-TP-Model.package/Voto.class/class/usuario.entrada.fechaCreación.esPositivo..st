instance creation
usuario: unUsuario entrada: unaEntrada fechaCreación: unaFecha esPositivo: aBoolean
	"Constructor de Voto"

	| nuevoVoto |
	nuevoVoto := self new.
	nuevoVoto usuario: unUsuario.
	nuevoVoto entrada: unaEntrada.
	nuevoVoto fechaCreación: unaFecha.
	nuevoVoto esPositivo: aBoolean.
	^ nuevoVoto