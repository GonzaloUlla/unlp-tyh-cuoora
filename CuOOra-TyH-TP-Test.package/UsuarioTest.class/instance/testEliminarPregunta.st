tests
testEliminarPregunta
	| pregunta1 pregunta2 pregunta3 tópico1 |
	"initialization"
	tópico1 := Tópico nombre: 't1' descripción: 't1'.
	pregunta1 := Pregunta
		usuario: usuario
		fechaCreación: DateAndTime now
		título: 'p1'
		texto: 'p1'
		tópicoRelacionado: tópico1.	"eliminada"
	pregunta2 := Pregunta
		usuario: usuario
		fechaCreación: DateAndTime now
		título: 'p2'
		texto: 'p2'
		tópicoRelacionado: tópico1.	"agregada"
	pregunta3 := Pregunta
		usuario: (Usuario nombre: 'otro' contraseña: 'otro')
		título: 'p3'
		texto: 'p3'
		tópicoRelacionado: tópico1.	"nunca agregada"
	"add pregunta"
	usuario agregarPregunta: pregunta1.
	usuario agregarPregunta: pregunta2.
	self assert: usuario conocerPreguntas size equals: 2.
	self assert: (usuario conocerPreguntas includes: pregunta1).
	self assert: (usuario conocerPreguntas includes: pregunta2).
	"eliminar pregunta"
	usuario eliminarPregunta: pregunta1.
	self assert: usuario conocerPreguntas size equals: 1.
	self deny: (usuario conocerPreguntas includes: pregunta1).
	self assert: (usuario conocerPreguntas includes: pregunta2).
	self deny: (usuario conocerPreguntas includes: pregunta3).
	self should: [ usuario eliminarPregunta: pregunta3 ] raise: Error