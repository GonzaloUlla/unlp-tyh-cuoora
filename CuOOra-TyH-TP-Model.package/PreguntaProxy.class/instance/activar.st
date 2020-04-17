changing state
activar
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta activar