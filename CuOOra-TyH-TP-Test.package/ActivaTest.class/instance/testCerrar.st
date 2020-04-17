testing
testCerrar
	self assert: pregunta estaActiva.
	self assert: pregunta cerrar.
	self assert: pregunta estaCerrada