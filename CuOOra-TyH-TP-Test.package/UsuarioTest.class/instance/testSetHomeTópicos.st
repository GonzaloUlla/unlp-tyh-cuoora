testing
testSetHomeTópicos
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial).
	usuario setHomeTópicos.
	self deny: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial).
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorTópicos)