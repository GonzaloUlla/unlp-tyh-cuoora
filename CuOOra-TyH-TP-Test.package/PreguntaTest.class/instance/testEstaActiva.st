testing
testEstaActiva
	self deny: (pregunta estado isKindOf: Activa).
	pregunta activar.
	self assert: pregunta estaActiva