testing
testAgregarPregunta
	| usuario1 pregunta1 tópico1 |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123' fechaCreación: DateAndTime now.
	tópico1 := Tópico nombre: 'Animales' descripción: 'Animales del mundo'.
	pregunta1 := Pregunta
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Canguro'
		texto: '¿Cómo hace un canguro para mantener limpia su bolsa?'
		tópicoRelacionado: tópico1.
	cuoora agregarPregunta: pregunta1.
	self assert: (usuario1 conocerPreguntas anySatisfy: [ :aPregunta | aPregunta = pregunta1 ]).
	self assert: (tópico1 conocerPreguntas anySatisfy: [ :aPregunta | aPregunta = pregunta1 ])