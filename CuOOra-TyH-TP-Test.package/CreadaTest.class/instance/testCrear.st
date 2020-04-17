testing
testCrear
	self assert: pregunta estaCreada.
	self deny: pregunta crear.
	self assert: pregunta estaCreada