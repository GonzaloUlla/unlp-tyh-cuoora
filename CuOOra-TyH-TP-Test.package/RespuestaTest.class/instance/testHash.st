testing
testHash
	| otraRespuesta |
	otraRespuesta := respuesta copy.
	self assert: respuesta hash = otraRespuesta hash.
	otraRespuesta texto: 'Otro texto diferente al anterior'.
	self deny: respuesta hash = otraRespuesta hash