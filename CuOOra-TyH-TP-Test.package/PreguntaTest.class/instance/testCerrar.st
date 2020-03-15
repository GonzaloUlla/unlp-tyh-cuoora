testing
testCerrar
	pregunta activar.
	pregunta cerrar.
	self assert: (pregunta estado isMemberOf: Cerrada)
	