testing
testAgregarPregunta
	| pregunta1 usuario1 |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	pregunta1 := Pregunta
		usuario: usuario1
		título: 'Color serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico.
	tópico agregarPregunta: pregunta1.
	self assert: tópico conocerPreguntas size equals: 1.
	self assert: (tópico conocerPreguntas includes: pregunta1)