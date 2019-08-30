initialization
initializePreguntaViews
	loggedUser
		ifNil: [ preguntaViews := nil ]
		ifNotNil: [ preguntaViews := SortedCollection new.
			(loggedUser conocerPreguntasRelevantes size > 5)
				ifTrue: [ 1 to: 5 do: [ :i | preguntaViews add: (PreguntaView pregunta: (loggedUser conocerPreguntasRelevantes asOrderedCollection at: i) loggedUser: loggedUser) ] ];
				ifFalse: [ loggedUser conocerPreguntasRelevantes do: [ :eachPregunta | preguntaViews add: (PreguntaView pregunta: eachPregunta loggedUser: loggedUser) ] ] ]