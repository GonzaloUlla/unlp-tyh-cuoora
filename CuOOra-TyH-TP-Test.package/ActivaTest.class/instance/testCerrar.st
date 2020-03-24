testing
testCerrar
	self assert: estadoActiva pregunta estaActiva.
	self assert: estadoActiva pregunta cerrar.
	self assert: estadoActiva pregunta estaCerrada