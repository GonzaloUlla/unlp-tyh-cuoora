api
eliminarPregunta: unaPregunta
	"Elimina unaPregunta de todo CuOOra:
		1) Elimina todos los votos de las respuestas de unaPregunta
		2) Elimina todas las respuestas de unaPregunta y de sus usuarios
		3) Elimina todos los votos de unaPregunta
		4) Elimina unaPregunta de todos los usuarios
		5) Elimina unaPregunta de todos los tópicos"

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