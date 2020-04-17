testing
testCrear
	self assert: pregunta estaCerrada.
	self deny: pregunta crear.
	self assert: pregunta estaCerrada