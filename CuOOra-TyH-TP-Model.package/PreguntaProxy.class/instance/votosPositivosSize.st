accessing
votosPositivosSize
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta votosPositivosSize