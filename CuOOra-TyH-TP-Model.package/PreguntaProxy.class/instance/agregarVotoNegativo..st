api
agregarVotoNegativo: unVoto
	pregunta ifNil: [ self initializePregunta ].
	sDAO put: unVoto.
	^ pregunta agregarVotoNegativo: unVoto