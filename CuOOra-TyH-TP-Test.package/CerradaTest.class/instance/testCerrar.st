testing
testCerrar
	self assert: pregunta estaCerrada.
	self deny: pregunta cerrar.
	self assert: pregunta estaCerrada