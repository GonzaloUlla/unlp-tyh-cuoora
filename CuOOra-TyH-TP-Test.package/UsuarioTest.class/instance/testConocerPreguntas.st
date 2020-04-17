testing
testConocerPreguntas
	| pregunta1 tópico1 |
	"initialization"
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	pregunta1 := Pregunta
		usuario: usuario
		fechaCreación: DateAndTime now
		título: 'Color serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico1.
	"add pregunta"
	usuario agregarPregunta: pregunta1.
	self assert: usuario conocerPreguntas size equals: 1.
	"try to modify preguntas"
	usuario conocerPreguntas add: 'otra pregunta'.
	self assert: usuario conocerPreguntas size equals: 1.
	"evaluate usuario"
	self assert: usuario conocerPreguntas atRandom título equals: 'Color serpiente'