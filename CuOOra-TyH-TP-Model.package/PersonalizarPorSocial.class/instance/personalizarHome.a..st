api
personalizarHome: unCuoora a: unUsuario
	| preguntasDeUsuariosPorVotos |
	preguntasDeUsuariosPorVotos := (self
		conocerPreguntasDeUsuariosSeguidosPorSemanaPor: unUsuario)
		asSortedCollection:
			[ :pregunta1 :pregunta2 | pregunta1 calcularPuntaje > pregunta2 calcularPuntaje ].
	^ preguntasDeUsuariosPorVotos