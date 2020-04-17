copying
copy
	| newPreguntaProxy |
	pregunta ifNil: [ self initializePregunta ].
	newPreguntaProxy := self shallowCopy postCopy.
	newPreguntaProxy pregunta: pregunta copy.
	newPreguntaProxy id: self id.
	^ newPreguntaProxy