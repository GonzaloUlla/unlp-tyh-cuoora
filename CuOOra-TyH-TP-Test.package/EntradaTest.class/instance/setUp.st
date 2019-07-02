running
setUp
	"Una Entrada no debería instanciarse, por ende se prueba una Respuesta (es una Entrada)"

	| usuario |
	usuario := Usuario nombre: 'u0' contraseña: 'u0'.
	entrada := Respuesta
		usuario: usuario
		texto: 'r0'
		preguntaReferida:
			(Pregunta
				usuario: usuario
				título: 'p0'
				texto: 'p0'
				tópicoRelacionado: (Tópico nombre: 't0' descripción: 't0'))