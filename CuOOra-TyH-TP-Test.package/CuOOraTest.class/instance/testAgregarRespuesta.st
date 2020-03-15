testing
testAgregarRespuesta
	| usuario1 pregunta1 tópico1 unaRespuesta |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123' fechaCreación: DateAndTime now.
	tópico1 := Tópico nombre: 'Animales' descripción: 'Animales del mundo'.
	pregunta1 := Pregunta
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Canguro'
		texto: '¿Cómo hace un canguro para mantener limpia su bolsa?'
		tópicoRelacionado: tópico1.
	cuoora agregarPregunta: pregunta1.
	unaRespuesta := Respuesta
		usuario: usuario1
		fechaCreación: DateAndTime now
		texto: 'Es de color verde'
		preguntaReferida: pregunta1.
	cuoora agregarRespuesta: unaRespuesta.
	unaRespuesta usuario agregarRespuesta: unaRespuesta.
	unaRespuesta preguntaReferida agregarRespuesta: unaRespuesta.
	self assert: (usuario1 conocerRespuestas anySatisfy: [ :aRespuesta | aRespuesta = unaRespuesta ]).
	self deny: (pregunta1 conocerRespuestas anySatisfy: [ :aRespuesta | aRespuesta = unaRespuesta ])