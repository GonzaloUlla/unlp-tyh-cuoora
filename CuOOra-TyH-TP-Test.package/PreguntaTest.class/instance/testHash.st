testing
testHash
	| otraPregunta |
	otraPregunta := pregunta copy.
	self assert: pregunta hash = otraPregunta hash.
	otraPregunta título: 'Otro texto diferente al anterior'.
	self deny: pregunta hash = otraPregunta hash