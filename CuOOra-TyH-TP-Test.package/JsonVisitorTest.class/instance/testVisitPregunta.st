tests
testVisitPregunta
	| usuario1 tópico1 pregunta1 respuesta1 |
	usuario1 := Usuario new.
	tópico1 := Tópico new.
	pregunta1 := Pregunta
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
	self
		assert: (visitor visitPregunta: pregunta1)
		equals:
			'{' , String cr , String tab , '"título" : "Color lagarto",' , String cr , String tab
				, '"texto" : "¿De qué color es el lagarto?",' , String cr , String tab
				, '"respuestas" : [ ]' , String cr , '}'.
	pregunta1 agregarRespuesta: respuesta1.
	self
		assert: (visitor visitPregunta: pregunta1)
		equals:
			'{' , String cr , String tab , '"título" : "Color lagarto",' , String cr , String tab
				, '"texto" : "¿De qué color es el lagarto?",' , String cr , String tab
				, '"respuestas" : [{' , String cr , String tab , String tab , String tab
				, '"texto" : "Es de color verde"' , String cr , String tab , String tab , '}'
				, String cr , String tab , ']' , String cr , '}'