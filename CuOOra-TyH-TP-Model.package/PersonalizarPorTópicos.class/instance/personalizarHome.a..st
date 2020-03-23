api
personalizarHome: unCuoora a: unUsuario
	| preguntasPorTópicosPorFechaCreación |
	preguntasPorTópicosPorFechaCreación := (self
		conocerPreguntasPorTópicosInterésPorSemanaDe: unUsuario)
		asSortedCollection:
			[ :pregunta1 :pregunta2 | pregunta1 fechaCreación asDate < pregunta2 fechaCreación asDate ].
	^ preguntasPorTópicosPorFechaCreación