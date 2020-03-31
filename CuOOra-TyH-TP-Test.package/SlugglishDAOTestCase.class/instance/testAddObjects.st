tests
testAddObjects
	| sDAO |
	sDAO := SluggishDAO new.
	sDAO put: 'unString'.
	sDAO put: 'unString2'.
	self assert: (sDAO retrieveAllByClass: ByteString) size = 2