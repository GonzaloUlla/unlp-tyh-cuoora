testing
testActivar
	self deny: estadoCreada pregunta estaActiva.
	estadoCreada pregunta activar.
	self assert: estadoCreada pregunta estaActiva