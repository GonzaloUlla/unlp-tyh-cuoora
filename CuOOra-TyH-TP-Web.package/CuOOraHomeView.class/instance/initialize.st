initialization
initialize
	super initialize.
	agregarUsuarioView := AgregarUsuarioView new.
	cuooraViews := OrderedCollection new.
	cuooraViews add: agregarUsuarioView.
	cuooraSingleton := CuOOra new cuooraSingleton.
	usuario := nil
	"usuario := cuooraSingleton conocerUsuarios any"