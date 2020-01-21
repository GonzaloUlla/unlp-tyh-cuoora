tests
testActivar
	| usuario1 tópico1 pregunta1 |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	pregunta1 := Pregunta
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Color Serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico1.
	self deny: (pregunta1 estado isKindOf: Activa).
	pregunta1 activar.
	self assert: (pregunta1 estado isKindOf: Activa)