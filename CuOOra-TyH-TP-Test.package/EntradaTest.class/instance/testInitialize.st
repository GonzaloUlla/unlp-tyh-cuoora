testing
testInitialize
	self deny: entrada fechaCreación isNil.
	self deny: entrada texto isNil.
	self deny: entrada usuario isNil.
	self assert: (entrada conocerVotosPositivos isMemberOf: OrderedCollection).
	self assert: (entrada conocerVotosNegativos isMemberOf: OrderedCollection).
	self assert: entrada conocerVotosPositivos isEmpty.
	self assert: entrada conocerVotosNegativos isEmpty