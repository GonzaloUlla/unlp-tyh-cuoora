reflective operations
doesNotUnderstand: aMessage
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta perform: aMessage selector withArguments: aMessage arguments