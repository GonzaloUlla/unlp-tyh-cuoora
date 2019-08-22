instance creation
usuarioPerfil: unUsuario loggedUser: otroUsuario
	"Constructor de PerfilUsuarioView"

	| nuevaPerfilUsuarioView |
	nuevaPerfilUsuarioView := self new.
	nuevaPerfilUsuarioView usuarioPerfil: unUsuario.
	nuevaPerfilUsuarioView loggedUser: otroUsuario.
	^ nuevaPerfilUsuarioView