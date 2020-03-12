tests
testAgregarRespuestaA
	| usuario1 usuario2 respuesta1 pregunta1 tópico1 |
	"Inicializo usuario1 y respuesta1"
	usuario1 := Usuario
		nombre: 'Gonzalo'
		contraseña: 'Gonzalo123'.
	usuario2 := Usuario
		nombre: 'Julieta'
		contraseña: 'Julieta123'.
	tópico1 := Tópico
		nombre: 'Reptiles'
		descripción: 'Animales reptiles'.
	pregunta1 := Pregunta
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Color Serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico1.
	respuesta1 := Respuesta
		usuario: usuario2
		texto: 'r1'
		preguntaReferida: pregunta1.
	pregunta1 agregarRespuesta: respuesta1.
	"Valido que la colección de respuestas esté vacía, dado que la pregunta está en estado Creada y, en este estado, no es posible agregarle respuestas"
	self
		assert: pregunta1 conocerRespuestas isEmpty.
	pregunta1 activar.
	pregunta1 agregarRespuesta: respuesta1.

	"Valido que la colección de respuestas no esté vacía, dado que la pregunta está en estado Activa y, en este estado, es posible agregarle respuestas"
	self
		deny: pregunta1 conocerRespuestas isEmpty