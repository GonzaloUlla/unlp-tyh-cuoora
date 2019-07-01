initialization
testInitialize
	self deny: voto usuario isNil.
	self deny: voto entrada isNil.
	self assert: voto fechaCreación isNotNil