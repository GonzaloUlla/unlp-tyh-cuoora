state tracking
estaActiva
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta estaActiva