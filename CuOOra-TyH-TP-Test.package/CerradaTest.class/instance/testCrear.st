testing
testCrear
	self assert: estadoCerrada pregunta estaCerrada.
	self deny: estadoCerrada pregunta crear.
	self assert: estadoCerrada pregunta estaCerrada