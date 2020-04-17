accessing
texto: anObject
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta texto: anObject