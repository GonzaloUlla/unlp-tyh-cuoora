testing
testSelectVotosNegativosHaceSemanas
	| voto |
	self assert: (proxy selectVotosNegativosHaceSemanas: 0) isEmpty.
	self assert: (proxy selectVotosNegativosHaceSemanas: 1) isEmpty.
	self assert: (proxy selectVotosNegativosHaceSemanas: 999) isEmpty.
	proxy activar.
	voto := self crearVotoNegativoA: proxy haceSemanas: 0.
	proxy agregarVotoNegativo: voto.
	self assert: (proxy selectVotosNegativosHaceSemanas: 0) isEmpty.
	self assert: (proxy selectVotosNegativosHaceSemanas: 1) size equals: 1.
	self assert: (proxy selectVotosNegativosHaceSemanas: 1.0) size equals: 1.
	self assert: (proxy selectVotosNegativosHaceSemanas: 2) isEmpty.
	voto := self crearVotoNegativoA: proxy haceSemanas: 1.
	proxy agregarVotoNegativo: voto.
	self assert: (proxy selectVotosNegativosHaceSemanas: 0) isEmpty.
	self assert: (proxy selectVotosNegativosHaceSemanas: 1) size equals: 1.
	self assert: (proxy selectVotosNegativosHaceSemanas: 2) size equals: 1.
	voto := self crearVotoNegativoA: proxy haceSemanas: 0.
	proxy agregarVotoNegativo: voto.
	voto := self crearVotoNegativoA: proxy haceSemanas: 0.
	proxy agregarVotoNegativo: voto.
	self assert: (proxy selectVotosNegativosHaceSemanas: 1) size equals: 3