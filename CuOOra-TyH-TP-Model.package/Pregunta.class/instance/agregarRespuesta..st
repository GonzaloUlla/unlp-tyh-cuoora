api
agregarRespuesta: unaRespuesta
	| retorno |
	retorno := true.
	self estaActiva
		ifTrue: [ respuestas add: unaRespuesta ]
		ifFalse: [ retorno := false ].
	^ retorno