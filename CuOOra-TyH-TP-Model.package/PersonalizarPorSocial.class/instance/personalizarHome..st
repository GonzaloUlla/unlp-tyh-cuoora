api
personalizarHome: unCuoora
	| preguntasDeUsuariosPorVotos |
	preguntasDeUsuariosPorVotos := (self conocerPreguntasDeUsuariosSeguidosPorSemanaPor: usuario) asSortedCollection: [ :pregunta1 :pregunta2 | pregunta1 calcularPuntaje > pregunta2 calcularPuntaje ].
	^ preguntasDeUsuariosPorVotos