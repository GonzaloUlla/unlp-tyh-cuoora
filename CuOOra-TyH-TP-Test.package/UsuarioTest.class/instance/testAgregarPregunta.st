testing
testAgregarPregunta
	|pregunta1 tópico1|
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'. 
	pregunta1 := PreguntaProxy usuario: usuario fechaCreación: (DateAndTime now) título: 'Color serpiente' texto: '¿De qué color es la serpiente?' tópicoRelacionado: tópico1. 
	usuario agregarPregunta: pregunta1.
	self assert: usuario conocerPreguntas size equals: 1.