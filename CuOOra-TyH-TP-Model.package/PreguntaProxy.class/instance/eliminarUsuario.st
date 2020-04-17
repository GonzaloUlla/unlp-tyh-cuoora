api
eliminarUsuario
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta eliminarUsuario