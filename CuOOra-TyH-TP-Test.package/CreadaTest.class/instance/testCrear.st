testing
testCrear
	self assert: estadoCreada pregunta estaCreada.
	self deny: estadoCreada crear.
	self assert: estadoCreada pregunta estaCreada