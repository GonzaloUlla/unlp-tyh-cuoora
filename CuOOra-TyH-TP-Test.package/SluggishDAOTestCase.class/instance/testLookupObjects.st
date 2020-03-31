tests
testLookupObjects
	| sDAO col |
	sDAO := SluggishDAO new.
	sDAO
		put: 'unString';
		put: 'unString2'.
	col := sDAO select: [ :it | it includesSubstring: 'g2' ] forClass: ByteString.
	self assert: col size equals: 1