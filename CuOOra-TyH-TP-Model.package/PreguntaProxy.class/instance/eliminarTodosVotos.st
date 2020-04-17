api
eliminarTodosVotos
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta eliminarTodosVotos