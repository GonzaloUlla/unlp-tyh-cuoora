testing
testConocerPreguntas
	| pregunta1 usuario1 |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	pregunta1 := PreguntaProxy
		usuario: usuario1
		título: 'Color serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico.
	usuario1 agregarPregunta: pregunta1.
	tópico agregarPregunta: pregunta1.
	self assert: tópico conocerPreguntas size equals: 1.
	self assert: (tópico conocerPreguntas includes: pregunta1).
	"try to modify preguntas"
	tópico conocerPreguntas add: 'otra pregunta'.
	self assert: tópico conocerPreguntas size equals: 1