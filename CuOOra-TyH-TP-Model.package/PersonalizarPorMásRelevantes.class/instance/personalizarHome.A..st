api
personalizarHome: unCuoora a: unUsuario
	| preguntasPorCantidadRespuestas |
	preguntasPorCantidadRespuestas := (self
		conocerPreguntasDelDía: unCuoora)
		asSortedCollection:
			[ :pregunta1 :pregunta2 | pregunta1 conocerRespuestas size > pregunta2 conocerRespuestas size ].
	^ preguntasPorCantidadRespuestas