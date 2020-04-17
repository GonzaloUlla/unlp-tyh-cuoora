converting
asString
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta asString