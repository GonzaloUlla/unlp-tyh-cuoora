accessing
fechaCreación: anObject
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta fechaCreación: anObject