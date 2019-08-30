controlling
agregarRespuesta
	self validateAgregarRespuesta
		ifTrue: [ respuesta usuario: loggedUser.
			respuesta preguntaReferida: preguntaView pregunta.
			cuooraSingleton agregarRespuesta: respuesta.
			success := true ]
		ifFalse: [ success := false ].
	self resetRespuesta