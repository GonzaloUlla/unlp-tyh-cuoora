testing
testEstaCerrada
	self deny: pregunta estaCerrada.
	self assert: pregunta activar.
	self assert: pregunta cerrar.
	self assert: pregunta estaCerrada