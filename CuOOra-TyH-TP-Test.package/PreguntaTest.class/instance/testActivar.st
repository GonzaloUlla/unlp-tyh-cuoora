testing
testActivar
	pregunta activar.
	self deny: (pregunta estado isKindOf: Cerrada).
	self assert: (pregunta estado isKindOf: Activa) 
	