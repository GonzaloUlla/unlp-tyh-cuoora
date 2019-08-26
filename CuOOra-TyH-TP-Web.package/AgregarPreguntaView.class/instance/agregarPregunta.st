controlling
agregarPregunta
	self validateAgregarPregunta
		ifTrue: [ cuooraSingleton agregarPregunta: pregunta.
			success := true ]
		ifFalse: [ success := false ]