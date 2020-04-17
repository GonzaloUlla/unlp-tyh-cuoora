testing
testCrear
	|  usuario2 respuesta1 |
	"Inicializo usuario2 y respuesta1"
	usuario2 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	respuesta1 := Respuesta usuario: usuario2 texto: 'r1' preguntaReferida: pregunta.
	self assert: pregunta estaActiva.

	"La pregunta no tiene respuestas, puede volver a Creada"
	pregunta crear.
	self assert: pregunta estaCreada.

	"Valido que la pregunta no pueda volver al estado Creada dado que ya tiene una respuesta"
	pregunta activar.
	self assert: pregunta estaActiva.
	pregunta agregarRespuesta: respuesta1.
	pregunta crear.
	self deny: pregunta estaCreada.
	self assert: pregunta estaActiva