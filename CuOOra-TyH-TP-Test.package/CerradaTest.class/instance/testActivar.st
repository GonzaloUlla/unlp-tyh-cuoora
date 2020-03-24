testing
testActivar
	self assert: estadoCerrada pregunta estaCerrada.
	self deny: estadoCerrada pregunta activar.
	self assert: estadoCerrada pregunta estaCerrada