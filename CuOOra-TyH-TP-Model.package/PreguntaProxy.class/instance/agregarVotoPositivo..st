api
agregarVotoPositivo: unVoto
	pregunta ifNil: [ self initializePregunta ].
	sDAO put: unVoto.
	^ pregunta agregarVotoPositivo: unVoto