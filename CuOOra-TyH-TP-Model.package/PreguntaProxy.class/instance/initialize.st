initialization
initialize
	super initialize.
	pregunta := Pregunta
		usuario: nil
		título: ''
		texto: ''
		tópicoRelacionado: nil.
	sDAO := SluggishDAO singleton.
	lastNWeeks := 1.
	returnedSelectionSize := 0