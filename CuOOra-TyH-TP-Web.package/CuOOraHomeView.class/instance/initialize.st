initialization
initialize
	super initialize.
	cuooraSingleton := CuOOra new cuooraSingleton.
	loggedUser := nil.
	agregarUsuarioView := AgregarUsuarioView cuooraSingleton: cuooraSingleton.
	self initializePreguntaViews