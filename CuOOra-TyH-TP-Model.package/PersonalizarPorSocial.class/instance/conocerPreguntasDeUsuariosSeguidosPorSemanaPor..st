api
conocerPreguntasDeUsuariosSeguidosPorSemanaPor: unUsuario
	| preguntasDeUsuariosPorSemana |
	preguntasDeUsuariosPorSemana := OrderedCollection new.
	(self conocerPreguntasDeUsuariosSeguidosPor: unUsuario)
		do: [ :pregunta | 
			pregunta fechaCreación asDate > (Date today - 7 days)
				ifTrue: [ preguntasDeUsuariosPorSemana add: pregunta ] ].
	^ preguntasDeUsuariosPorSemana