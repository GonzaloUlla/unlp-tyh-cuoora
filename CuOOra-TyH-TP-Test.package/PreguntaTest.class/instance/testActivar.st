testing
testActivar
	self assert: pregunta activar.
	self deny: pregunta estaCreada.
	self deny: pregunta estaCerrada.
	self assert: pregunta estaActiva