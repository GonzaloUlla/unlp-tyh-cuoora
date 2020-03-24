testing
testCrear
	| pregunta1 usuario2 respuesta1 |
	"Inicializo usuario2 y respuesta1"
	pregunta1 := estadoActiva pregunta.
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	respuesta1 := Respuesta usuario: usuario2 texto: 'r1' preguntaReferida: pregunta1.
	self assert: pregunta1 estaActiva.

	"La pregunta no tiene respuestas, puede volver a Creada"
	pregunta1 crear.
	self assert: pregunta1 estaCreada.

	"Valido que la pregunta no pueda volver al estado Creada dado que ya tiene una respuesta"
	pregunta1 activar.
	self assert: pregunta1 estaActiva.
	pregunta1 agregarRespuesta: respuesta1.
	pregunta1 crear.
	self deny: pregunta1 estaCreada.
	self assert: pregunta1 estaActiva