testing
testActivar
	self deny: pregunta estaActiva.
	pregunta activar.
	self assert: pregunta estaActiva