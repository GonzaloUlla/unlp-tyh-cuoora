testing
testEquals
	| otraPregunta |
	otraPregunta := pregunta copy.
	self assert: pregunta equals: otraPregunta.
	otraPregunta título: 'Otro texto diferente al anterior'.
	self deny: (pregunta equals: otraPregunta)