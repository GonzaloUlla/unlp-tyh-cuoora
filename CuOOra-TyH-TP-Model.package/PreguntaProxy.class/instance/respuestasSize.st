accessing
respuestasSize
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta respuestasSize