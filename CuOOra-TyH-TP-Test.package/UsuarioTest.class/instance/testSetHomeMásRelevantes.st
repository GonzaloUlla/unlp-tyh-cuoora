testing
testSetHomeMásRelevantes
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial).
	usuario setHomeMásRelevantes.
	self deny: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial).
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorMásRelevantes)