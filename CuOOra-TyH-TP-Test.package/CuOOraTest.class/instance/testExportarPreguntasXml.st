running
testExportarPreguntasXml
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
	pregunta1 agregarRespuesta: respuesta1.
	pregunta1 agregarRespuesta: respuesta1.
	cuoora agregarUsuario: usuario1.
	cuoora agregarTópico: tópico1.
	usuario1 agregarPregunta: pregunta1.
	usuario1 agregarPregunta: pregunta1.
	usuario1 agregarRespuesta: respuesta1.
	tópico1 agregarPregunta: pregunta1.
	self
		assert: cuoora exportarPreguntasXml
		equals:
			'<?xml version="1.0"?>' , String cr , '<preguntas><pregunta>' , String cr
				, '    <título>Color lagarto</título>' , String cr
				, '    <texto>¿De qué color es el lagarto?</texto>' , String cr
				, '<respuestas><respuesta>' , String cr , '    <texto>Es de color verde</texto>'
				, String cr , '</respuesta><respuesta>' , String cr
				, '    <texto>Es de color verde</texto>' , String cr , '</respuesta></respuestas>'
				, String cr , '</pregunta><pregunta>' , String cr
				, '    <título>Color lagarto</título>' , String cr
				, '    <texto>¿De qué color es el lagarto?</texto>' , String cr
				, '<respuestas><respuesta>' , String cr , '    <texto>Es de color verde</texto>'
				, String cr , '</respuesta><respuesta>' , String cr
				, '    <texto>Es de color verde</texto>' , String cr , '</respuesta></respuestas>'
				, String cr , '</pregunta></preguntas>'