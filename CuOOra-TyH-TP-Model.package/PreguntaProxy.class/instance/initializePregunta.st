initialization
initializePregunta
	| preguntaCollection newPregunta |
	preguntaCollection := sDAO select: [ :preg | preg id = id ] forClass: Pregunta.
	newPregunta := preguntaCollection isEmpty
		ifTrue: [ nil ]
		ifFalse: [ preguntaCollection first ].
	newPregunta ifNotNil: [ newPregunta estado pregunta: self ].
	pregunta := newPregunta.
	^ pregunta