testing
testCerrar
	self assert: estadoCreada pregunta estaCreada.
	self deny: estadoCreada cerrar.
	self assert: estadoCreada pregunta estaCreada