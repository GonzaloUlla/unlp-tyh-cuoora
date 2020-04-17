running
setUp
	| usuario1 tópico1 |
	"Inicializo usuario1, tópico1 y pregunta1"
	usuario1 := Usuario nombre: 'Gonzalo' contraseña: 'Gonzalo123'.
	tópico1 := Tópico nombre: 'Reptiles' descripción: 'Animales reptiles'.
	pregunta := PreguntaProxy
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Color Serpiente'
		texto: '¿De qué color es la serpiente?'
		tópicoRelacionado: tópico1.
	usuario1 agregarPregunta: pregunta.
	tópico1 agregarPregunta: pregunta.
	pregunta activar.
	sDAO := SluggishDAO newSingleton