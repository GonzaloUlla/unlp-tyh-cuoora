api
agregarPregunta: unaPregunta
	unaPregunta usuario agregarPregunta: unaPregunta.
	unaPregunta conocerTópicosRelacionados do: [ :topic | topic agregarPregunta: unaPregunta ]