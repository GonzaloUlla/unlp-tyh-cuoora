as yet unclassified
crear
	pregunta conocerRespuestas isEmpty
		ifTrue: [ pregunta estado: (Creada pregunta: self pregunta) ]
