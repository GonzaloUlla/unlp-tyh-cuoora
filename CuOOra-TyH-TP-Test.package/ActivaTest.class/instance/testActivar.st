testing
testActivar
	self assert: estadoActiva pregunta estaActiva.
	self deny: estadoActiva pregunta activar.
	self assert: estadoActiva pregunta estaActiva