api
agregarTópicoRelacionado: unTópico
	pregunta ifNil: [ self initializePregunta ].
	^ pregunta agregarTópicoRelacionado: unTópico