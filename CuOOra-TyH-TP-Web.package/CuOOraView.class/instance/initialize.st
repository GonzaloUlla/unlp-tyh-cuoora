initialization
initialize
	super initialize.
	agregarUsuarioView := AgregarUsuarioView new.
	cuooraViews := OrderedCollection new.
	cuooraViews add: agregarUsuarioView