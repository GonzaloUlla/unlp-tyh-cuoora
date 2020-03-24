api
personalizarHome: unCuoora
	| preguntasPorTópicosPorFechaCreación |
	preguntasPorTópicosPorFechaCreación := (self conocerPreguntasPorTópicosInterésPorSemanaDe: usuario)
		asSortedCollection: [ :pregunta1 :pregunta2 | pregunta1 fechaCreación < pregunta2 fechaCreación ].
	^ preguntasPorTópicosPorFechaCreación