api
conocerPreguntasDelDía: unCuoora
	| preguntasDelDía |
	preguntasDelDía := OrderedCollection new.
	(self conocerTodasPreguntas: unCuoora)
		do: [ :pregunta | 
			pregunta fechaCreación asDate = Date today
				ifTrue: [ preguntasDelDía add: pregunta ] ].
	^ preguntasDelDía