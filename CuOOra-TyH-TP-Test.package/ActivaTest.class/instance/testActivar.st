testing
testActivar
	self assert: pregunta estaActiva.
	self deny: pregunta activar.
	self assert: pregunta estaActiva