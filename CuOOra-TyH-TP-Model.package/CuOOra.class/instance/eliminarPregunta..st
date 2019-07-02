api
eliminarPregunta: unaPregunta
	"Elimina unaPregunta de todo CuOOra:
		1) Elimina todas las respuestas de unaPregunta y sus votos
		2) Elimina todos los votos de unaPregunta
		3) Elimina unaPregunta de todos los usuarios
		4) Elimina unaPregunta de todos los tópicos"

	unaPregunta eliminarTodasRespuestas.
	unaPregunta eliminarTodosVotos.
	usuarios
		do: [ :usuario | 
			(usuario conocerPreguntas includes: unaPregunta)
				ifTrue: [ usuario eliminarPregunta: unaPregunta ] ].
	tópicos
		do: [ :tópico | 
			(tópico conocerPreguntas includes: unaPregunta)
				ifTrue: [ tópico eliminarPregunta: unaPregunta ] ]