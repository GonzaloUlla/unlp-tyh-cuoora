copying
copy
	| newPreguntaProxy |
	newPreguntaProxy := self shallowCopy postCopy.
	newPreguntaProxy pregunta: pregunta copy.
	^ newPreguntaProxy