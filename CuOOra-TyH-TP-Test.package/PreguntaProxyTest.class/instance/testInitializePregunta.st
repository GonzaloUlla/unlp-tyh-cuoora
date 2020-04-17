testing
testInitializePregunta
	self assert: proxy id = 134968191.
	self assert: proxy pregunta isNil.
	proxy initializePregunta.
	self assert: proxy id = 134968191.
	self assert: proxy pregunta isNotNil.
	self assert: proxy pregunta id = proxy id