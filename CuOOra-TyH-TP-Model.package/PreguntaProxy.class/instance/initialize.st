initialization
initialize
	super initialize.
	pregunta := Pregunta
		usuario: nil
		título: ''
		texto: ''
		tópicoRelacionado: nil.
	sDAO := SluggishDAO singleton.
	respuestasWeeks := 1.
	votosNegativosWeeks := 1.
	votosPositivosWeeks := 1.
	respuestasSelectionSize := 0.
	votosNegativosSelectionSize := 0.
	votosPositivosSelectionSize := 0