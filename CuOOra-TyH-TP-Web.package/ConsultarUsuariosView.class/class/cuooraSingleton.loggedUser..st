instance creation
cuooraSingleton: cuoora loggedUser: unUsuario
	"Constructor de ConsultarUsuariosView"

	| nuevaConsultarUsuariosView |
	nuevaConsultarUsuariosView := self new.
	nuevaConsultarUsuariosView cuooraSingleton: cuoora.
	nuevaConsultarUsuariosView loggedUser: unUsuario.
	^ nuevaConsultarUsuariosView