api
agregarVotoPositivo: unVoto
	unVoto esPositivo: true.
	votosPositivos add: unVoto.
	votosPositivosSize ifNil: [ votosPositivosSize := 0 ].
	votosPositivosSize := votosPositivosSize + 1