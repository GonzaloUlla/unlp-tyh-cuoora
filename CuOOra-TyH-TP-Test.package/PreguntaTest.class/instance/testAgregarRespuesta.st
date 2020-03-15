testing
testAgregarRespuesta
	| usuario1 respuesta1 |
	"Inicializo usuario1 y respuesta1"
	usuario1 := Usuario nombre: 'Gonzalo' contraseña: 'Gonzalo123'.
	respuesta1 := Respuesta usuario: usuario1 texto: 'r1' preguntaReferida: pregunta.

	"Agrego respuesta1 a pregunta"
	pregunta agregarRespuesta: respuesta1.

	"Valido que la colección de respuestas esté vacía, dado que la pregunta se crea en estado Creada y, en este estado, no es posible agregarle respuestas"
	self assert: pregunta conocerRespuestas isEmpty.
	
	pregunta activar.
	
	pregunta agregarRespuesta: respuesta1.

	"Valido que la colección de respuestas no esté vacía, dado que la pregunta está en estado Activa y, en este estado, es posible agregarle respuestas"
	self deny: pregunta conocerRespuestas isEmpty