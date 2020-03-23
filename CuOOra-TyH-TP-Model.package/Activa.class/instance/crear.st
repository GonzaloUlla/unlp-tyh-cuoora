changing state
crear
	pregunta conocerRespuestas isEmpty
		ifTrue: [ pregunta estado: (Creada pregunta: pregunta) ]