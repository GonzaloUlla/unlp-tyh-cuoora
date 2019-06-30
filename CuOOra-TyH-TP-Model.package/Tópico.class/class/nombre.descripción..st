instance creation
nombre: unNombre descripción: unaDescripción
	"Constructor de Tópico"

	| nuevoTópico |
	nuevoTópico := self new.
	nuevoTópico nombre: unNombre.
	nuevoTópico descripción: unaDescripción.
	^ nuevoTópico