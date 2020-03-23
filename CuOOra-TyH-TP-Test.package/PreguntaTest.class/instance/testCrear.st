testing
testCrear
	self should: [ pregunta crear ] raise: Error.
	self assert: pregunta estado estaCreada