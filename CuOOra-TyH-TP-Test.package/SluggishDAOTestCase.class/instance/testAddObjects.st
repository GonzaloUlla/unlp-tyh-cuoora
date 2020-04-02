tests
testAddObjects
	sDAO put: 'unString'.
	sDAO put: 'unString2'.
	self assert: (sDAO retrieveAllByClass: ByteString) size equals: 2