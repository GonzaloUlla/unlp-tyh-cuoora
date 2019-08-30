instance creation
usuarioPerfil: unUsuario loggedUser: otroUsuario cuooraSingleton: unCuooraSingleton
	"Constructor de PerfilUsuarioView"

	| nuevaPerfilUsuarioView |
	nuevaPerfilUsuarioView := self new.
	nuevaPerfilUsuarioView usuarioPerfil: unUsuario.
	nuevaPerfilUsuarioView loggedUser: otroUsuario.
	nuevaPerfilUsuarioView cuooraSingleton: unCuooraSingleton.
	^ nuevaPerfilUsuarioView