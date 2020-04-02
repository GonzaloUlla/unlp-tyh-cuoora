api
agregarVotoPositivo: unVoto
	sDAO put: unVoto.
	^ self pregunta agregarVotoPositivo: unVoto