testing
testSelectVotosNegativosHaceSemanas
	| voto |
	self assert: (sDAO retrieveAllByClass: pregunta class) size equals: 5.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 1) isEmpty.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 999) isEmpty.
	pregunta activar.
	voto := self crearVotoNegativoA: pregunta haceSemanas: 0.
	pregunta agregarVotoNegativo: voto.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 1) size equals: 1.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 1.0) size equals: 1.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 2) isEmpty.
	voto := self crearVotoNegativoA: pregunta haceSemanas: 1.
	pregunta agregarVotoNegativo: voto.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 0) isEmpty.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 1) size equals: 1.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 2) size equals: 1.
	voto := self crearVotoNegativoA: pregunta haceSemanas: 0.
	pregunta agregarVotoNegativo: voto.
	voto := self crearVotoNegativoA: pregunta haceSemanas: 0.
	pregunta agregarVotoNegativo: voto.
	self assert: (pregunta selectVotosNegativosHaceSemanas: 1) size equals: 3