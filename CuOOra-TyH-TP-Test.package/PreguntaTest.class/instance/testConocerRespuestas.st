testing
testConocerRespuestas
	| respuesta1 usuario1 |
	self assert: pregunta conocerRespuestas isEmpty.
	usuario1 := Usuario nombre: 'Gonzalo' contraseña: 'Gonzalo123'.
	respuesta1 := Respuesta usuario: usuario1 texto: 'r1' preguntaReferida: pregunta.
	pregunta activar.
	pregunta agregarRespuesta: respuesta1.
	self assert: pregunta conocerRespuestas size equals: 1