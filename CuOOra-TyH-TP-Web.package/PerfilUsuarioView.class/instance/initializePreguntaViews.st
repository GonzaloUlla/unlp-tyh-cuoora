initialization
initializePreguntaViews
	preguntaViews := OrderedCollection new.
	usuarioPerfil conocerPreguntas
		do:
			[ :eachPregunta | preguntaViews add: (PreguntaView pregunta: eachPregunta loggedUser: loggedUser  ) ]