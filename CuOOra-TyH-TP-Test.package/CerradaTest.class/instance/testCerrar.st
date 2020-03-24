testing
testCerrar
	self assert: estadoCerrada pregunta estaCerrada.
	self deny: estadoCerrada pregunta cerrar.
	self assert: estadoCerrada pregunta estaCerrada