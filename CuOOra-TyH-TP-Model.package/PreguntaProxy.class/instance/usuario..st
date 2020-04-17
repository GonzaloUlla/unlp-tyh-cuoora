accessing
usuario: anObject
	pregunta ifNil: [ self initializePregunta ].
	pregunta usuario: anObject