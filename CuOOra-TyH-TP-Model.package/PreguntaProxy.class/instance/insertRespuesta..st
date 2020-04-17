private 
insertRespuesta: unaRespuesta
	pregunta ifNil: [ self initializePregunta ].
	pregunta insertRespuesta: unaRespuesta.
	sDAO put: unaRespuesta