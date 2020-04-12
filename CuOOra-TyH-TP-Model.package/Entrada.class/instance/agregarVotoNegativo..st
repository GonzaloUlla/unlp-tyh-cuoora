api
agregarVotoNegativo: unVoto
	unVoto esPositivo: false.
	votosNegativos add: unVoto.
	votosNegativosSize ifNil: [ votosNegativosSize := 0 ].
	votosNegativosSize := votosNegativosSize + 1