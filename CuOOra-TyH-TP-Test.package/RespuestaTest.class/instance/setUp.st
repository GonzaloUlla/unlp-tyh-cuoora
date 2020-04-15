running
setUp
	| usuario |
	usuario := Usuario nombre: 'u0' contraseña: 'u0'.
	respuesta := Respuesta
		usuario: usuario
		texto: 'r0'
		preguntaReferida:
			(PreguntaProxy
				usuario: usuario
				título: 'p0'
				texto: 'p0'
				tópicoRelacionado: (Tópico nombre: 't0' descripción: 't0'))