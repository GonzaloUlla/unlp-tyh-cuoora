testing
testId
	| otraPregunta |
	otraPregunta := pregunta copy.
	self assert: pregunta id = otraPregunta id.
	otraPregunta título: 'Otro texto diferente al anterior'.
	self deny: pregunta id = otraPregunta id.
	self assert: pregunta id = pregunta hash