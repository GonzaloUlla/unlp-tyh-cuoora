controlling
agregarPregunta
	self validateAgregarPregunta
		ifTrue: [ pregunta usuario: loggedUser.
			topicos do: [ :topic | pregunta agregarTópicoRelacionado: topic ].
			cuooraSingleton agregarPregunta: pregunta.
			success := true ]
		ifFalse: [ success := false ]