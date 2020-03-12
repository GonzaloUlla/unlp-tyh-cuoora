api
crear: unaPregunta
	unaPregunta conocerRespuestas isEmpty
		ifTrue: [ unaPregunta estado: Creada new]