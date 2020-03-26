tests
testLookupObjects
	| sDAO texto1 texto2 col |
	sDAO := SluggishDAO new.
	texto1 := sDAO put: 'unString'.
	texto2 := sDAO put: 'unString2'.
	col := sDAO select: [ :it | it includesSubstring: 'g2' ] forClass: ByteString.
	self assert: col size = 1