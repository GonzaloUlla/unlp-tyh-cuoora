api
accept: unVisitor
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta accept: unVisitor