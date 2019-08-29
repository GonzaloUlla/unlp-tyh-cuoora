controlling
agregarPregunta
	self validateAgregarPregunta
		ifTrue: [ pregunta usuario: loggedUser.
			cuooraSingleton agregarPregunta: pregunta.
			success := true ]
		ifFalse: [ success := false ].
	self resetPregunta