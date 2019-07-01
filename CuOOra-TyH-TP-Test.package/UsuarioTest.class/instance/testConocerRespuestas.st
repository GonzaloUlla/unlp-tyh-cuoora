testing
testConocerRespuestas
	| pregunta1 respuesta1 respuesta2 tópico1 otroUsuario |
	"initialization"
	otroUsuario := Usuario nombre: 'otro usuario' contraseña: 'asd'.
	tópico1 := Tópico nombre: 't1' descripción: 't1'.
	pregunta1 := Pregunta
		usuario: otroUsuario
		título: 'p1'
		texto: 'p1'
		tópicoRelacionado: tópico1.
	"add pregunta"
	otroUsuario agregarPregunta: pregunta1.
	"respuesta"
	respuesta1 := Respuesta usuario: usuario texto: 'r1' preguntaReferida: pregunta1.	"debe estar"
	usuario agregarRespuesta: respuesta1.
	respuesta2 := Respuesta usuario: otroUsuario texto: 'r2' preguntaReferida: pregunta1.	"NO debe estar"
	otroUsuario agregarRespuesta: respuesta2.
	self assert: (usuario conocerRespuestas includes: respuesta1).
	self assert: usuario conocerRespuestas size equals: 1.
	"try to modify respuestas"
	usuario conocerRespuestas add: 'otra respuesta'.
	self assert: usuario conocerRespuestas size equals: 1