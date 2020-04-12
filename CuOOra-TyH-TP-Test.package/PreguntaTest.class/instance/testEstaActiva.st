testing
testEstaActiva
	self deny: pregunta estaActiva.
	self assert: pregunta activar.
	self assert: pregunta estaActiva