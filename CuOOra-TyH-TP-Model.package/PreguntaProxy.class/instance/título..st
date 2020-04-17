accessing
título: anObject
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta título: anObject