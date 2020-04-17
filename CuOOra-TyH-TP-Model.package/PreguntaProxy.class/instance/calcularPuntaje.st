api
calcularPuntaje
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta calcularPuntaje