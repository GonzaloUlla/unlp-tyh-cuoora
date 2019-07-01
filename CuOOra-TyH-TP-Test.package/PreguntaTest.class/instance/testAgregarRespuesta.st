tests
testAgregarRespuesta
	| usuario1 respuesta1 |
	"Inicializo usuario1 y respuesta1"
	usuario1 := Usuario
		nombre: 'Gonzalo'
		contraseña: 'Gonzalo123'.
	respuesta1 := Respuesta
		usuario: usuario1
		texto: 'r1'
		preguntaReferida: pregunta.

	"Agrego respuesta1 a pregunta"
	pregunta agregarRespuesta: respuesta1.

	"Valido que la colección de respuestas de pregunta no esté vacía, dado que acabamos de agregarle una respuesta"
	self deny: pregunta conocerRespuestas isEmpty