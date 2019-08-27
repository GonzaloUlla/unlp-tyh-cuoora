controlling
agregarRespuesta
	self validateAgregarRespuesta
		ifTrue: [ respuesta preguntaReferida: preguntaView pregunta.
			cuooraSingleton agregarRespuesta: respuesta.
			success := true ]
		ifFalse: [ success := false ]