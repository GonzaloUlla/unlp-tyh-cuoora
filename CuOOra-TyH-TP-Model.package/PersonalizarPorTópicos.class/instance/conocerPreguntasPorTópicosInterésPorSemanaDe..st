api
conocerPreguntasPorTópicosInterésPorSemanaDe: unUsuario
	| preguntasPorTópicosPorSemana |
	preguntasPorTópicosPorSemana := OrderedCollection new.
	(self conocerPreguntasPorTópicosInterésDe: unUsuario)
		do: [ :pregunta | 
			pregunta fechaCreación asDate > (Date today - 7 days)
				ifTrue: [ preguntasPorTópicosPorSemana add: pregunta ] ].
	^ preguntasPorTópicosPorSemana