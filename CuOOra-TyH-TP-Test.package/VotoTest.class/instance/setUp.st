initialization
setUp
	| usuario1 tópico1 pregunta |
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	pregunta := Pregunta usuario: usuario1 fechaCreación: (DateAndTime now) título: 'Color Serpiente' texto: '¿De qué color es la serpiente?' tópicoRelacionado: tópico1.
	voto := Voto usuario: usuario1 entrada: pregunta

	 