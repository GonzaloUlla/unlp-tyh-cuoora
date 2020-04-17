proxy
selectRespuestasHaceSemanas: nSemanas
	(nSemanas isNumber and: nSemanas >= 1)
		ifFalse: [ ^ OrderedCollection empty ].
	pregunta ifNil: [ self initializePregunta ].
	^ sDAO
		select:
			[ :rta | rta preguntaReferida = pregunta and: (rta fechaCreación between: DateAndTime now - nSemanas weeks and: DateAndTime now - (nSemanas - 1) weeks) ]
		forClass: Respuesta