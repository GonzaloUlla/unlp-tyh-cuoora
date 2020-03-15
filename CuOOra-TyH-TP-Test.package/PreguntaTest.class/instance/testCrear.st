testing
testCrear
	pregunta crear.
	self assert: (pregunta estado isKindOf: Creada)
	