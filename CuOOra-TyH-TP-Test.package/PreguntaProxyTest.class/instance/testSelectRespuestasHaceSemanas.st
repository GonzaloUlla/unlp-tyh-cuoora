testing
testSelectRespuestasHaceSemanas
	| rta |
	self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5.
	self assert: (pregunta selectRespuestasHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectRespuestasHaceSemanas: 1) isEmpty.
	self assert: (pregunta selectRespuestasHaceSemanas: 999) isEmpty.
	pregunta activar.
	rta := self crearRespuestaA: pregunta haceSemanas: 0.
	pregunta agregarRespuesta: rta.
	self assert: (pregunta selectRespuestasHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectRespuestasHaceSemanas: 1) size equals: 1.
	self assert: (pregunta selectRespuestasHaceSemanas: 1.0) size equals: 1.
	self assert: (pregunta selectRespuestasHaceSemanas: 2) isEmpty.
	rta := self crearRespuestaA: pregunta haceSemanas: 1.
	pregunta agregarRespuesta: rta.
	self assert: (pregunta selectRespuestasHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectRespuestasHaceSemanas: 1) size equals: 1.
	self assert: (pregunta selectRespuestasHaceSemanas: 2) size equals: 1.
	rta := self crearRespuestaA: pregunta haceSemanas: 0.
	pregunta agregarRespuesta: rta.
	rta := self crearRespuestaA: pregunta haceSemanas: 0.
	pregunta agregarRespuesta: rta.
	self assert: (pregunta selectRespuestasHaceSemanas: 1) size equals: 3