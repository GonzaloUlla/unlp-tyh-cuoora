testing
testEstaCerrada
	self deny: (pregunta estado isKindOf: Cerrada).
	pregunta activar.
	pregunta cerrar.
	self assert: pregunta estaCerrada