instance creation
nombre: unNombre contraseña: unaContraseña fechaCreación: unaFecha
	"Constructor de Usuario con fecha de creación"

	| nuevoUsuario |
	nuevoUsuario := self new.
	nuevoUsuario nombre: unNombre.
	nuevoUsuario contraseña: unaContraseña.
	nuevoUsuario fechaCreación: unaFecha.
	nuevoUsuario estrategiaHomeActual: (PersonalizarPorSocial usuario: nuevoUsuario).
	^ nuevoUsuario