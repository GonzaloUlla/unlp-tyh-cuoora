testing
testSelectVotosPositivosHaceSemanas
	| voto |
	self assert: (proxy selectVotosPositivosHaceSemanas: 0) isEmpty.
	self assert: (proxy selectVotosPositivosHaceSemanas: 1) size equals: 1.
	self assert: (proxy selectVotosPositivosHaceSemanas: 999) isEmpty.
	proxy activar.
	voto := self crearVotoPositivoA: proxy haceSemanas: 0.
	proxy agregarVotoPositivo: voto.
	self assert: (proxy selectVotosPositivosHaceSemanas: 0) isEmpty.
	self assert: (proxy selectVotosPositivosHaceSemanas: 1) size equals: 2.
	self assert: (proxy selectVotosPositivosHaceSemanas: 1.0) size equals: 2.
	self assert: (proxy selectVotosPositivosHaceSemanas: 2) isEmpty.
	voto := self crearVotoPositivoA: proxy haceSemanas: 1.
	proxy agregarVotoPositivo: voto.
	self assert: (proxy selectVotosPositivosHaceSemanas: 0) isEmpty.
	self assert: (proxy selectVotosPositivosHaceSemanas: 1) size equals: 2.
	self assert: (proxy selectVotosPositivosHaceSemanas: 2) size equals: 1.
	voto := self crearVotoPositivoA: proxy haceSemanas: 0.
	proxy agregarVotoPositivo: voto.
	voto := self crearVotoPositivoA: proxy haceSemanas: 0.
	proxy agregarVotoPositivo: voto.
	self assert: (proxy selectVotosPositivosHaceSemanas: 1) size equals: 4