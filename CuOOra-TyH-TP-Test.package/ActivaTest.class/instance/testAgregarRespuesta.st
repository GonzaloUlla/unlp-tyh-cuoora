testing
testAgregarRespuesta
	| pregunta1 usuario2 respuesta1 |
	"Inicializo usuario2 y respuesta1"
	pregunta1 := estadoActiva pregunta.
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	respuesta1 := Respuesta usuario: usuario2 texto: 'r1' preguntaReferida: pregunta1.
	self should: [ pregunta1 agregarRespuesta: respuesta1 ] raise: Error.
	"Valido que la colección de respuestas esté vacía, dado que la pregunta está en estado Creada y, en este estado, no es posible agregarle respuestas"
	self assert: pregunta1 conocerRespuestas isEmpty.
	pregunta1 activar.
	self assert: pregunta1 estaActiva.
	pregunta1 agregarRespuesta: respuesta1.

	"Valido que la colección de respuestas no esté vacía, dado que la pregunta está en estado Activa y, en este estado, es posible agregarle respuestas"
	self deny: pregunta1 conocerRespuestas isEmpty