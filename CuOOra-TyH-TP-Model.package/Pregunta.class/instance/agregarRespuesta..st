api
agregarRespuesta: unaRespuesta
	(estado estaCreada | estado estaCerrada)
		ifFalse: [respuestas add: unaRespuesta]

	