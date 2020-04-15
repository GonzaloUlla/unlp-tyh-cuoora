testing
testEliminarRespuesta
	| pregunta1 respuesta1 tópico1 |
	"initialization"
	tópico1 := Tópico nombre: 't1' descripción: 't1'.
	pregunta1 := PreguntaProxy
		usuario: usuario
		fechaCreación: DateAndTime now
		título: 'p1'
		texto: 'p1'
		tópicoRelacionado: tópico1.	"eliminada"
	respuesta1 := Respuesta usuario: usuario texto: 'r1' preguntaReferida: pregunta1.
	"add pregunta"
	usuario agregarPregunta: pregunta1.
	usuario agregarRespuesta: respuesta1.
	self assert: usuario conocerRespuestas size equals: 1.
	self assert: (usuario conocerRespuestas includes: respuesta1).
	"eliminar respuesta"
	usuario eliminarRespuesta: respuesta1.
	self assert: usuario conocerRespuestas size equals: 0.
	self deny: (usuario conocerRespuestas includes: respuesta1)