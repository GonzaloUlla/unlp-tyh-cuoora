testing
testAgregarRespuesta
	| usuario2 respuesta1 |
	"Inicializo usuario2 y respuesta1"
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	respuesta1 := Respuesta usuario: usuario2 texto: 'r1' preguntaReferida: pregunta.
	self assert: pregunta estaCreada.
	self deny: pregunta estaActiva.
	self deny: (pregunta agregarRespuesta: respuesta1).
	"Valido que la colección de respuestas esté vacía, dado que la pregunta está en estado Creada y, en este estado, no es posible agregarle respuestas"
	self assert: pregunta conocerRespuestas isEmpty