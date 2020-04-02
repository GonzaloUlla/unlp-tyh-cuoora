api
agregarVotoPositivo: unVoto
	sDAO put: unVoto.
	^ pregunta agregarVotoPositivo: unVoto