testing
testActivar
	self assert: pregunta estaCerrada.
	self deny: pregunta activar.
	self assert: pregunta estaCerrada