testing
testSetHomeSocial
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial).
	usuario setHomeSocial.
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial).
	usuario setHomeTópicos.
	self deny: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial).
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorTópicos).
	usuario setHomeSocial.
	self assert: (usuario estrategiaHomeActual isKindOf: PersonalizarPorSocial)