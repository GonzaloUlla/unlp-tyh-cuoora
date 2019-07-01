tests
testAgregarRespuesta
	|respuesta1|
	respuesta1 := Respuesta new.
	pregunta agregarRepuesta: respuesta1.
	self deny: pregunta conocerRespuestas size = 0.