accessing
votosNegativosSize
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta votosNegativosSize