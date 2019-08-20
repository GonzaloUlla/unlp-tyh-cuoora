instance creation
cuooraSingleton: unCuooraSingleton
	"Constructor de AgregarUsuarioView"

	| nuevaAgregarUsuarioView |
	nuevaAgregarUsuarioView := self new.
	nuevaAgregarUsuarioView cuooraSingleton: unCuooraSingleton.
	^ nuevaAgregarUsuarioView