testing
testSelectRespuestasHaceSemanas
	| rta |
	self assert: (sDAO retrieveAllByClass: Pregunta) size equals: 4.
	self assert: (proxy selectRespuestasHaceSemanas: 0) isEmpty.
	self assert: (proxy selectRespuestasHaceSemanas: 1) size equals: 2.
	self assert: (proxy selectRespuestasHaceSemanas: 2) isEmpty.
	self assert: (proxy selectRespuestasHaceSemanas: 999) isEmpty.
	proxy activar.
	rta := self crearRespuestaA: proxy haceSemanas: 0.
	proxy agregarRespuesta: rta.
	self assert: (proxy selectRespuestasHaceSemanas: 0) isEmpty.
	self assert: (proxy selectRespuestasHaceSemanas: 1) size equals: 3.
	self assert: (proxy selectRespuestasHaceSemanas: 1.0) size equals: 3.
	self assert: (proxy selectRespuestasHaceSemanas: 2) isEmpty.
	rta := self crearRespuestaA: proxy haceSemanas: 1.
	proxy agregarRespuesta: rta.
	self assert: (proxy selectRespuestasHaceSemanas: 0) isEmpty.
	self assert: (proxy selectRespuestasHaceSemanas: 1) size equals: 3.
	self assert: (proxy selectRespuestasHaceSemanas: 2) size equals: 1.
	rta := self crearRespuestaA: proxy haceSemanas: 0.
	proxy agregarRespuesta: rta.
	rta := self crearRespuestaA: proxy haceSemanas: 0.
	proxy agregarRespuesta: rta.
	self assert: (proxy selectRespuestasHaceSemanas: 1) size equals: 5