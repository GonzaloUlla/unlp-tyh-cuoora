testing
testEliminarUsuario
	| usuarioCopy |
	self assert: respuesta usuario isNotNil.
	self assert: respuesta usuario conocerRespuestas isEmpty.
	respuesta usuario agregarRespuesta: respuesta.
	usuarioCopy := respuesta usuario.
	self assert: respuesta usuario conocerRespuestas isNotEmpty.
	self assert: usuarioCopy conocerRespuestas isNotEmpty.
	respuesta eliminarUsuario.
	self assert: respuesta usuario isNil.
	self assert: usuarioCopy conocerRespuestas isEmpty