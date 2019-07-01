tests
testAgregarRespuesta
	|respuesta1|
	respuesta1 := Respuesta new.
	pregunta agregarRespuesta: respuesta1.
	self deny: pregunta conocerRespuestas isEmpty.
