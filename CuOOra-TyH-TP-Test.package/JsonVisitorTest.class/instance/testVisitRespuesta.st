testing
testVisitRespuesta
	| usuario1 pregunta1 respuesta1 |
	usuario1 := Usuario new.
	pregunta1 := Pregunta new.
	respuesta1 := Respuesta
		usuario: usuario1
		fechaCreación: DateAndTime now
		texto: 'Es de color verde'
		preguntaReferida: pregunta1.
	self assert: (visitor visitRespuesta: Respuesta new) equals: '{}'.
	self
		assert: (visitor visitRespuesta: respuesta1)
		equals: '{"texto":"Es de color verde"}'