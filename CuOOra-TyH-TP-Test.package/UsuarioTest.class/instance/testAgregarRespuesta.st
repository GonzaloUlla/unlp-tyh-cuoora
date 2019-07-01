tests
testAgregarRespuesta
	|usuario1 tópico1 pregunta1 respuesta1|
	usuario1 := Usuario nombre: 'Gonzalo' contraseña: 'Gonzalo123'.
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	pregunta1 := Pregunta usuario: usuario1 fechaCreación: (DateAndTime now) título: 'Color serpiente' texto: '¿De qué color son las serpientes?' tópicoRelacionado: tópico1.  
	respuesta1 := Respuesta usuario: usuario fechaCreación: (DateAndTime now) texto: 'Son de color verde' preguntaReferida: pregunta1. 
	usuario agregarRespuesta: respuesta1.
	self assert: usuario conocerRespuestas size equals: 1.