testing
testSelectVotosPositivosHaceSemanas
	| voto |
	self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 1) isEmpty.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 999) isEmpty.
	pregunta activar.
	voto := self crearVotoPositivoA: pregunta haceSemanas: 0.
	pregunta agregarVotoPositivo: voto.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 1) size equals: 1.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 1.0) size equals: 1.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 2) isEmpty.
	voto := self crearVotoPositivoA: pregunta haceSemanas: 1.
	pregunta agregarVotoPositivo: voto.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 1) size equals: 1.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 2) size equals: 1.
	voto := self crearVotoPositivoA: pregunta haceSemanas: 0.
	pregunta agregarVotoPositivo: voto.
	voto := self crearVotoPositivoA: pregunta haceSemanas: 0.
	pregunta agregarVotoPositivo: voto.
	self assert: (pregunta selectVotosPositivosHaceSemanas: 1) size equals: 3