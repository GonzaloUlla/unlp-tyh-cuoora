error handling
subclassResponsibility
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta perform: thisContext sender selector withArguments: thisContext sender arguments