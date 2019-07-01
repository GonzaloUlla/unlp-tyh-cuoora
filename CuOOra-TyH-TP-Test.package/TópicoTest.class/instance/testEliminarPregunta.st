tests
testEliminarPregunta
	| pregunta1 pregunta2 pregunta3 usuario |
	"initialization"
	usuario := Usuario nombre: 'u1' contraseña: 'u1'.
	pregunta1 := Pregunta
		usuario: usuario
		fechaCreación: DateAndTime now
		título: 'p1'
		texto: 'p1'
		tópicoRelacionado: tópico.	"eliminada"
	pregunta2 := Pregunta
		usuario: usuario
		fechaCreación: DateAndTime now
		título: 'p2'
		texto: 'p2'
		tópicoRelacionado: tópico.	"agregada"
	pregunta3 := Pregunta
		usuario: (Usuario nombre: 'otro' contraseña: 'otro')
		título: 'p3'
		texto: 'p3'
		tópicoRelacionado: tópico.	"nunca agregada"
	"add pregunta"
	tópico agregarPregunta: pregunta1.
	tópico agregarPregunta: pregunta2.
	self assert: tópico conocerPreguntas size equals: 2.
	self assert: (tópico conocerPreguntas includes: pregunta1).
	self assert: (tópico conocerPreguntas includes: pregunta2).
	"eliminar pregunta"
	tópico eliminarPregunta: pregunta1.
	self assert: tópico conocerPreguntas size equals: 1.
	self deny: (tópico conocerPreguntas includes: pregunta1).
	self assert: (tópico conocerPreguntas includes: pregunta2).
	self deny: (tópico conocerPreguntas includes: pregunta3).
	self should: [ tópico eliminarPregunta: pregunta3 ] raise: Error