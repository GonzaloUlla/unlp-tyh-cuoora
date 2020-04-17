testing
testCerrar
	self assert: pregunta estaCreada.
	self deny: pregunta cerrar.
	self assert: pregunta estaCreada