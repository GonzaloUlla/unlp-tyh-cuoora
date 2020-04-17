api
agregarRespuesta: unaRespuesta
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta agregarRespuesta: unaRespuesta