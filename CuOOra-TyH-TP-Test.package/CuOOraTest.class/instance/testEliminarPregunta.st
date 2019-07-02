testing
testEliminarPregunta
	"Elimina unaPregunta de todo CuOOra:
		1) Elimina todas las respuestas de unaPregunta y sus votos
		2) Elimina todos los votos de unaPregunta
		3) Elimina unaPregunta de todos los usuarios
		4) Elimina unaPregunta de todos los tópicos"

	| usuario tópico pregunta respuesta votoPregunta votoRespuesta |
	"Inicialización de usuario, tópico, pregunta y respuesta"
	usuario := Usuario nombre: 'u0' contraseña: 'u0'.
	tópico := Tópico nombre: 't0' descripción: 't0'.
	cuoora agregarUsuario: usuario.
	cuoora agregarTópico: tópico.
	pregunta := Pregunta
		usuario: usuario
		título: 'p0'
		texto: 'p0'
		tópicoRelacionado: tópico.
	usuario agregarPregunta: pregunta.
	tópico agregarPregunta: pregunta.
	respuesta := Respuesta usuario: usuario texto: 'r0' preguntaReferida: pregunta.
	usuario agregarRespuesta: respuesta.
	pregunta agregarRespuesta: respuesta.
	"Inicialización de votos"
	votoPregunta := Voto usuario: 'u1' entrada: pregunta.
	pregunta agregarVotoNegativo: votoPregunta.
	votoRespuesta := Voto usuario: 'u2' entrada: respuesta.
	respuesta agregarVotoPositivo: votoRespuesta.
	"Tests de inicialización"
	self assert: (usuario conocerPreguntas includes: pregunta).
	self assert: (tópico conocerPreguntas includes: pregunta).
	self assert: (usuario conocerRespuestas includes: respuesta).
	self assert: (pregunta conocerRespuestas includes: respuesta).
	self assert: (pregunta conocerVotosNegativos includes: votoPregunta).
	self assert: (respuesta conocerVotosPositivos includes: votoRespuesta).
	"Eliminar pregunta"
	cuoora eliminarPregunta: pregunta.
	self deny: (respuesta conocerVotosPositivos includes: votoRespuesta).
	self deny: (usuario conocerRespuestas includes: respuesta).
	self deny: (pregunta conocerRespuestas includes: respuesta).
	self deny: (pregunta conocerVotosNegativos includes: votoPregunta).
	self deny: (usuario conocerPreguntas includes: pregunta).
	self deny: (tópico conocerPreguntas includes: pregunta)