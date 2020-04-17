accessing
estado: unEstado
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta estado: unEstado