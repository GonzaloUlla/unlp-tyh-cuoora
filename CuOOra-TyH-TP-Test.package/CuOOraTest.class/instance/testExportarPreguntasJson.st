running
testExportarPreguntasJson
	| usuario1 tópico1 pregunta1 respuesta1 |
	usuario1 := Usuario new.
	tópico1 := Tópico new.
	pregunta1 := PreguntaProxy
		usuario: usuario1
		fechaCreación: DateAndTime now
		título: 'Color lagarto'
		texto: '¿De qué color es el lagarto?'
		tópicoRelacionado: tópico1.
	respuesta1 := Respuesta
		usuario: usuario1
		fechaCreación: DateAndTime now
		texto: 'Es de color verde'
		preguntaReferida: pregunta1.
	pregunta1 activar.
	pregunta1 agregarRespuesta: respuesta1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarTópico: tópico1.
	usuario1 agregarPregunta: pregunta1.
	usuario1 agregarPregunta: pregunta1.
	usuario1 agregarRespuesta: respuesta1.
	tópico1 agregarPregunta: pregunta1.
	self
		assert: cuoora exportarPreguntasJson
		equals:
			'{"preguntas":[{' , String cr , String tab , '"título" : "Color lagarto",' , String cr
				, String tab , '"texto" : "¿De qué color es el lagarto?",' , String cr , String tab
				, '"respuestas" : [{' , String cr , String tab , String tab , String tab
				, '"texto" : "Es de color verde"' , String cr , String tab , String tab , '}'
				, String cr , String tab , ']' , String cr , '},{' , String cr , String tab
				, '"título" : "Color lagarto",' , String cr , String tab
				, '"texto" : "¿De qué color es el lagarto?",' , String cr , String tab
				, '"respuestas" : [{' , String cr , String tab , String tab , String tab
				, '"texto" : "Es de color verde"' , String cr , String tab , String tab , '}'
				, String cr , String tab , ']' , String cr , '}' , String cr , ']}'