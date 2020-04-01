running
setUp
	| usuario1 tópico1 |
	cuooraSingleton := CuOOra new cuooraSingleton.
	sDAO := SluggishDAO newSingleton.
	usuario1 := Usuario nombre: 'Julieta' contraseña: 'Julieta123'.
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	pregunta := PreguntaProxy
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Color Serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico1.
	sDAO put: pregunta.
	cuooraSingleton conocerTodasPreguntas do: [ :preg | sDAO put: preg ]