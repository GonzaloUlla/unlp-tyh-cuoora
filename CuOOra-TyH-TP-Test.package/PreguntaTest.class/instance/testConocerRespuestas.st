testing
testConocerRespuestas
	|respuesta1 respuesta2 usuario1 usuario2 voto1 voto2|
	
	usuario1 := Usuario nombre: 'Gonzalo' contraseña: 'Gonzalo123'.
	usuario2 := Usuario nombre: 'Pedro' contraseña: 'Pedro123'. 
	 
	respuesta1 := Respuesta usuario: usuario1 texto: 'r1' preguntaReferida: pregunta.
	respuesta2 := Respuesta usuario: usuario2 texto: 'r2' preguntaReferida: pregunta.
	
	pregunta agregarRespuesta: respuesta1.
	pregunta agregarRespuesta: respuesta2.
	
	self assert: pregunta conocerRespuestas size equals: 2.
	self assert: pregunta calcularPuntajePromedioRespuestas equals: 0.
	 	
	voto1 := Voto usuario: usuario1 entrada: respuesta2.
	voto2 := Voto usuario: usuario2 entrada: respuesta1.

	respuesta2 agregarVotoPositivo: voto1.
	respuesta1 agregarVotoNegativo: voto2.
	
	self assert: (pregunta conocerRespuestas first = respuesta2).