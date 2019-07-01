testing
testInitialize
	self deny: respuesta usuario isNil.
	self deny: respuesta fechaCreación isNil.
	self assert: respuesta texto isNotNil.
	self assert: respuesta preguntaReferida isNotNil