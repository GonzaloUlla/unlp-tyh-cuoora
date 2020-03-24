testing
testAgregarRespuesta
	| pregunta1 usuario2 respuesta1 |
	"Inicializo usuario2 y respuesta1"
	pregunta1 := estadoCreada pregunta.
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	respuesta1 := Respuesta usuario: usuario2 texto: 'r1' preguntaReferida: pregunta1.
	self assert: pregunta1 estaCreada.
	self deny: pregunta1 estaActiva.
	self deny: (pregunta1 agregarRespuesta: respuesta1).
	"Valido que la colección de respuestas esté vacía, dado que la pregunta está en estado Creada y, en este estado, no es posible agregarle respuestas"
	self assert: pregunta1 conocerRespuestas isEmpty