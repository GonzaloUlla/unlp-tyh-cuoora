instance creation
nombre: unNombre contraseña: unaContraseña
	"Constructor de Usuario"

	| nuevoUsuario |
	nuevoUsuario := self new.
	nuevoUsuario nombre: unNombre.
	nuevoUsuario contraseña: unaContraseña.
	nuevoUsuario fechaCreación: DateAndTime now.
	^ nuevoUsuario