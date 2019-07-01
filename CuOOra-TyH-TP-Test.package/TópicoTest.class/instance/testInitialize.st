testing
testInitialize
	self deny: tópico nombre isNil.
	self deny: tópico descripción isNil.
	self deny: tópico conocerPreguntas isNil.
	self assert: (tópico conocerPreguntas isMemberOf: OrderedCollection).
	self assert: tópico nombre equals: 'Reptiles'