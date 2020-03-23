testing
testCrear
	| pregunta1 usuario2 respuesta1 |
	"Inicializo usuario2 y respuesta1"
	pregunta1 := estadoActiva pregunta.
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	respuesta1 := Respuesta usuario: usuario2 texto: 'r1' preguntaReferida: pregunta1.
	self assert: pregunta1 estaCreada.
	pregunta1 activar.
	pregunta1 agregarRespuesta: respuesta1.

	"Valido que la pregunta no pueda volver al estado Creada dado que ya tiene una respuesta"
	self deny: pregunta1 estaCreada.
	self assert: pregunta1 estaActiva