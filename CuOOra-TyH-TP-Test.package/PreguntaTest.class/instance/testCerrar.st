testing
testCerrar
	self assert: pregunta estaCreada.
	self deny: pregunta cerrar.
	self assert: pregunta estaCreada.
	self assert: pregunta activar.
	self assert: pregunta estaActiva.
	self assert: pregunta cerrar.
	self assert: pregunta estaCerrada